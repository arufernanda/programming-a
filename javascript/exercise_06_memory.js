function memory(giga) {
  cdRom = Math.round((giga * 1024) / 700);
  return cdRom;
}

module.exports = memory;
