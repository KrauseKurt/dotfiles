export default {
  name: "Custom Menu",
  items: [
    {
      label: "Open Terminal",
      icon: "utilities-terminal",
      on_click: () => {
        Utils.exec("alacritty"); // or your terminal
      },
    },
    {
      label: "Launch Browser",
      icon: "web-browser",
      on_click: () => {
        Utils.exec("firefox");
      },
    },
    {
      label: "Lock Screen",
      icon: "system-lock-screen",
      on_click: () => {
        Utils.exec("loginctl lock-session");
      },
    },
  ],
};
