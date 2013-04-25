
var saveButton = $("#save_btn");
var closeButton = $("#close_btn");
var zoomButton = $("#zoom_btn");

if (currentFileName === undefined) {
    var currentFileName = "md";
}

getMimeType = function(extension) {
  if (extension === "js") {
    return "javascript";
  } else if (extension === "txt") {
    return "text";
  } else if (extension === "htm") {
    return "html";
  } else if (extension === "md") {
    return "markdown";
  } else if (extension === "rb") {
    return "ruby";
  } else if (extension === "py") {
    return "python";
  } else if (extension === "c" || extension === "cpp") {
    return "c_cpp";
  } else {
    return extension;
  }
};

var editor = ace.edit("editor");
editor.focus();
editor.setTheme("ace/theme/monokai");
editor.setKeyboardHandler(ace.require("ace/keyboard/vim").handler);

// init editor content
var editorSession = editor.getSession();
editorSession.setMode("ace/mode/" + getMimeType(currentFileName));
editorSession.setValue(document.getElementById("source").value);

// preview
var src = editorSession.getValue();

if (currentFileName == "md" ||
    currentFileName == "markdown" ||
    currentFileName == "rst" ||
    currentFileName == "html") {
} else {
    src = "    " + src.replace(/\n/g, "\n    ");
}

$("#preview").append($(markdown.toHTML(src)));

editorSession.on('change', function() {
    // preview
    var src = editorSession.getValue();
    if (currentFileName == "md" ||
        currentFileName == "markdown" ||
        currentFileName == "rst" ||
        currentFileName == "html") {
    } else {
        src = "    " + src.replace(/\n/g, "\n    ");
    }

    document.getElementById("preview").innerHTML = markdown.toHTML(src);
    MathJax.Hub.Queue(["Typeset", MathJax.Hub, "preview"]);
});

var saveNote = function() {
    marboo.save(editorSession.getValue());
}

var closeEditor = function() {
    //marboo.saveEditor();
    location.href = location.href.replace(".ace.html", ".html");
}

var zoomEditor = function() {
    $("#editor-window").toggleClass("fullscreen");
    zoomButton.toggleClass("zoom-out-btn");
}

saveButton.on("click", saveNote);
closeButton.on("click", closeEditor);
zoomButton.on("click", zoomEditor);

editor.commands.addCommand({
    name: 'myCommand',
    bindKey: {win: 'Ctrl-S',  mac: 'Command-S'},
    exec: function(editor) {
        saveNote();
    },
    readOnly: true // false if this command should not apply in readOnly mode
});

window.onbeforeunload = function confirmExit() {
    return "保存修改";
}

