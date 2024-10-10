data = {
  "countries" : [
    { "name" : "Denmark" },
    { "name" : "Finland" },
    { "name" : "Norway" },
    { "name" : "Sweden" },
  ],
  "capitals" : [
    { "name" : "Copenhagen", "parent" : "Denmark" },
    { "name" : "Helsinki", "parent" : "Finland" },
    { "name" : "Oslo", "parent" : "Norway" },
    { "name" : "Stockholm", "parent" : "Sweden" },
  ],
  "manufacturers" : [
    {
      "name" : "Asus",
      "slug" : "asus"
    },
    {
      "name" : "Microsoft",
      "slug" : "microsoft"
    },
    {
      "name" : "Samsung",
      "slug" : "samsung"
    },
    {
      "name" : "Cisco",
      "slug" : "cisco"
    },
    {
      "name" : "Deltaco",
      "slug" : "deltaco"
    },
    {
      "name" : "TrueNAS",
      "slug" : "truenas"
    },
  ],
  "device_roles" : [
    {
      "name" : "Workstation PC",
      "slug" : "workstation-pc",
      "vm_role" : false,
      "color" : "9e9e9e"
    },
    {
      "name" : "NAS",
      "slug" : "nas",
      "vm_role" : false,
      "color" : "03a9f4"
    },
    {
      "name" : "Router",
      "slug" : "router",
      "vm_role" : false,
      "color" : "e91e63"
    },
    {
      "name" : "Smart Plug",
      "slug" : "smart-plug",
      "vm_role" : false,
      "color" : "aa1409"
    },
    {
      "name" : "Gaming Console",
      "slug" : "gaming console",
      "vm_role" : false,
      "color" : "ff9800"
    },
    {
      "name" : "Phone",
      "slug" : "phone",
      "vm_role" : false,
      "color" : "ff5722"
    },
  ],
  "device_types" : [
    {
      "model" : "ASUS-WS Pro",
      "manufacturer" : {
        "name" : "Asus"
      },
      "is_full_depth" : false,
      "u_height" : "1.0"
    },
    {
      "model" : "XBOX 360",
      "manufacturer" : {
        "name" : "Microsoft"
      },
      "is_full_depth" : true,
      "u_height" : "2.0"
    },
    {
      "model" : "TS 300",
      "manufacturer" : {
        "name" : "TrueNAS"
      },
      "is_full_depth" : false,
      "u_height" : "3.0"
    },
    {
      "model" : "Catalyst 9300",
      "manufacturer" : {
        "name" : "Cisco"
      },
      "is_full_depth" : true,
      "u_height" : "1.0"
    },
    {
      "model" : "Samsung Galaxy S4",
      "manufacturer" : {
        "name" : "Samsung"
      },
      "is_full_depth" : true,
      "u_height" : "1.0"
    },
    {
      "model" : "Wi-Fi Home Plug",
      "manufacturer" : {
        "name" : "Deltaco"
      },
      "is_full_depth" : true,
      "u_height" : "1.0"
    },
  ],
  "vrfs" : [
    {
      "name" : "PC"
    },
    {
      "name" : "GAMING"
    },
    {
      "name" : "STORAGE"
    },
    {
      "name" : "IOT"
    },
    {
      "name" : "PHONE"
    },
    {
      "name" : "MGMT"
    },
  ],
  "container_prefixes" : [
    {
      "prefix" : "10.1.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "PC"
      }
    },
    {
      "prefix" : "10.2.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "GAMING"
      }
    },
    {
      "prefix" : "10.3.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "STORAGE"
      }
    },
    {
      "prefix" : "10.4.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "IOT"
      }
    },
    {
      "prefix" : "10.5.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "PHONE"
      }
    },
    {
      "prefix" : "10.6.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "MGMT"
      }
    }
  ],
  "site_groups" : [
    {
      "name" : "Office"
    },
    {
      "name" : "Store"
    },
    {
      "name" : "Theater"
    },
  ],
  "sites" : [
    {
      "name" : "STO-001",
      "status" : "PLANNED",
      "region" : {
        "name" : "Stockholm"
      },
      "group" : {
        "name" : "Office"
      }
    },
    {
      "name" : "STO-002",
      "status" : "PLANNED",
      "region" : {
        "name" : "Stockholm"
      },
      "group" : {
        "name" : "Store"
      }
    },
    {
      "name" : "OS-001",
      "status" : "PLANNED",
      "region" : {
        "name" : "Oslo"
      },
      "group" : {
        "name" : "Theater"
      }
    },
    {
      "name" : "OS-002",
      "status" : "PLANNED",
      "region" : {
        "name" : "Oslo"
      },
      "group" : {
        "name" : "Office"
      }
    },
    {
      "name" : "CO-001",
      "status" : "PLANNED",
      "region" : {
        "name" : "Copenhagen"
      },
      "group" : {
        "name" : "Office"
      }
    },
    {
      "name" : "CO-002",
      "status" : "PLANNED",
      "region" : {
        "name" : "Copenhagen"
      },
      "group" : {
        "name" : "Store"
      }
    },
    {
      "name" : "CO-003",
      "status" : "PLANNED",
      "region" : {
        "name" : "Copenhagen"
      },
      "group" : {
        "name" : "Theater"
      }
    },
    {
      "name" : "FI-001",
      "status" : "PLANNED",
      "region" : {
        "name" : "Helsinki"
      },
      "group" : {
        "name" : "Theater"
      }
    },
    {
      "name" : "FI-002",
      "status" : "PLANNED",
      "region" : {
        "name" : "Helsinki"
      },
      "group" : {
        "name" : "Theater"
      }
    },
    {
      "name" : "FI-003",
      "status" : "PLANNED",
      "region" : {
        "name" : "Helsinki"
      },
      "group" : {
        "name" : "Store"
      }
    },
  ],
  "site_prefixes" : [
    {
      "prefix" : "10.1.1.0/24",
      "status" : "container",
      "vrf" : {
        "name" : "PC"
      }
    },
    {
      "prefix" : "10.2.1.0/24",
      "status" : "container",
      "vrf" : {
        "name" : "GAMING"
      }
    },
    {
      "prefix" : "10.3.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "STORAGE"
      }
    },
    {
      "prefix" : "10.4.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "IOT"
      }
    },
    {
      "prefix" : "10.5.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "PHONE"
      }
    },
    {
      "prefix" : "10.6.0.0/16",
      "status" : "container",
      "vrf" : {
        "name" : "MGMT"
      }
    }
  ],
}
