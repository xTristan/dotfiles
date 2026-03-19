export default {
  defaultBrowser: "Google Chrome",
  options: {
    // Check for updates. Default: true
    checkForUpdates: true,
    // Log every request to file. Default: false
    logRequests: false,
    // Keep Finicky running in the background
    keepRunning: false,
    // Hide the Finicky icon from the menu bar
    hideIcon: false
  },
  rewrite: [
    {
      match: "example.org/*",
      url: "http://example.com",
    },
  ],
  handlers: [
    {
      match: "apple.com/*",
      browser: "Safari",
    },
  ],
};
