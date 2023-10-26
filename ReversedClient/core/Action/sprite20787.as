// Action script...

// [Initial MovieClip Action of sprite 20787]
#initclip 52
if (!dofus.sounds.AudioManager)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.sounds)
    {
        _global.dofus.sounds = new Object();
    } // end if
    var _loc1 = (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } // end if
    }).prototype;
    _loc1.__get__events = function ()
    {
        return (dofus.sounds.AudioEvents.getInstance());
    };
    _loc1.__get__enabled = function ()
    {
        return (this._bAudioEnabled);
    };
    _loc1.__set__enabled = function (bValue)
    {
        this._bAudioEnabled = bValue;
        //return (this.enabled());
    };
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } // end if
    }).__get__soundNest = function ()
    {
        return (dofus.sounds.AudioManager._mcSoundNest);
    };
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } // end if
    }).__set__soundNest = function (newNest)
    {
        dofus.sounds.AudioManager._mcSoundNest = newNest;
        //return (this.soundNest());
    };
    _loc1.__get__environmentMute = function ()
    {
        return (this._bEnvironmentMute);
    };
    _loc1.__set__environmentMute = function (bValue)
    {
        this._bEnvironmentMute = bValue;
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == dofus.sounds.AudioManager.ENVIRONMENT_TAG)
            {
                _loc3.mute = this._bEnvironmentMute;
            } // end if
        } // end of for...in
        this.muteChanged();
        //return (this.environmentMute());
    };
    _loc1.__get__musicMute = function ()
    {
        return (this._bMusicMute);
    };
    _loc1.__set__musicMute = function (bValue)
    {
        this._bMusicMute = bValue;
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == dofus.sounds.AudioManager.MUSIC_TAG)
            {
                _loc3.mute = this._bMusicMute;
            } // end if
        } // end of for...in
        this.muteChanged();
        //return (this.musicMute());
    };
    _loc1.__get__effectMute = function ()
    {
        return (this._bEffectMute);
    };
    _loc1.__set__effectMute = function (bValue)
    {
        this._bEffectMute = bValue;
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == dofus.sounds.AudioManager.EFFECT_TAG)
            {
                _loc3.mute = this._bEffectMute;
            } // end if
        } // end of for...in
        this.muteChanged();
        //return (this.effectMute());
    };
    _loc1.__get__environmentVolume = function ()
    {
        return (this._nEnvironmentVolume);
    };
    _loc1.__set__environmentVolume = function (nValue)
    {
        this._nEnvironmentVolume = nValue;
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == dofus.sounds.AudioManager.ENVIRONMENT_TAG)
            {
                _loc3.volume = _loc3.baseVolume / 100 * this._nEnvironmentVolume;
            } // end if
        } // end of for...in
        //return (this.environmentVolume());
    };
    _loc1.__get__musicVolume = function ()
    {
        return (this._nMusicVolume);
    };
    _loc1.__set__musicVolume = function (nValue)
    {
        this._nMusicVolume = nValue;
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == dofus.sounds.AudioManager.MUSIC_TAG)
            {
                _loc3.volume = _loc3.baseVolume / 100 * this._nMusicVolume;
            } // end if
        } // end of for...in
        //return (this.musicVolume());
    };
    _loc1.__get__effectVolume = function ()
    {
        return (this._nEffectVolume);
    };
    _loc1.__set__effectVolume = function (nValue)
    {
        this._nEffectVolume = nValue;
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == dofus.sounds.AudioManager.EFFECT_TAG)
            {
                _loc3.volume = _loc3.baseVolume / 100 * this._nEffectVolume;
            } // end if
        } // end of for...in
        //return (this.effectVolume());
    };
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } // end if
    }).initialize = function (soundNest, lang)
    {
        dofus.sounds.AudioManager._mcSoundNest = soundNest;
        if (dofus.Constants.USING_PACKED_SOUNDS)
        {
            dofus.sounds.AudioManager._pckEffects = soundNest.createEmptyMovieClip("pckEffects", soundNest.getNextHighestDepth());
            dofus.sounds.AudioManager._pckEffects.loadMovie(dofus.Constants.SOUND_EFFECTS_PACKAGE);
            dofus.sounds.AudioManager._localisedEffects = soundNest.createEmptyMovieClip("localisedEffects", soundNest.getNextHighestDepth());
            if (lang == "fr")
            {
                dofus.sounds.AudioManager._localisedEffects.loadMovie(dofus.Constants.SOUND_EFFECTS_FR_PACKAGE);
            }
            else
            {
                dofus.sounds.AudioManager._localisedEffects.loadMovie(dofus.Constants.SOUND_EFFECTS_INTER_PACKAGE);
            } // end else if
            dofus.sounds.AudioManager._pckMusics = soundNest.createEmptyMovieClip("pckMusics", soundNest.getNextHighestDepth());
            dofus.sounds.AudioManager._pckMusics.loadMovie(dofus.Constants.SOUND_MUSICS_PACKAGE);
        } // end if
        dofus.sounds.AudioManager._bInitialized = true;
    };
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } // end if
    }).getInstance = function ()
    {
        if (!dofus.sounds.AudioManager._bInitialized)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.InvalidOperationException(null, "AudioManager", "getInstance", "Can\'t request an AudioManager\'s instance before initializing it."), "dofus.sounds.AudioManager::getInstance", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 250);
            return (null);
        } // end if
        if (dofus.sounds.AudioManager.instance == null)
        {
            dofus.sounds.AudioManager.instance = new dofus.sounds.AudioManager();
        } // end if
        return (dofus.sounds.AudioManager.instance);
    };
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } // end if
    }).getPackage = function (sPackageType)
    {
        switch (sPackageType)
        {
            case dofus.sounds.AudioManager.PACKAGE_TYPE_MUSIC:
            {
                return (dofus.sounds.AudioManager._pckMusics);
                break;
            } 
            case dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT:
            {
                return (dofus.sounds.AudioManager._pckEffects);
                break;
            } 
            default:
            {
                return (null);
                break;
            } 
        } // End of switch
    };
    _loc1.playSound = function (sOldSoundID)
    {
        var _loc3 = new ank.utils.ExtendedString(sOldSoundID);
        var _loc4 = _loc3.replace([" ", "é", "à", "-"], ["_", "e", "a", "_"]).toUpperCase();
        var _loc5 = this.api.lang.getEffectFromKeyname(_loc4);
        if (_loc5 != undefined && !_global.isNaN(_loc5))
        {
            this.playEffect(_loc5);
        }
        else if (dofus.Constants.USING_PACKED_SOUNDS)
        {
            this.playEffectFromElement(this.getElementFromLinkname(sOldSoundID));
        }
        else
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "playSound", "nEffect"), "dofus.sounds.AudioManager::playSound", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 297);
            return;
        } // end else if
    };
    _loc1.playEnvironment = function (environmentID)
    {
        if (this._aLatestEnvironmentBackground != null)
        {
            var _loc3 = 0;
            
            while (++_loc3, _loc3 < this._aLatestEnvironmentBackground.length)
            {
                this._aLatestEnvironmentBackground[_loc3].fadeOut(dofus.sounds.AudioManager.MUSIC_FADE_OUT_LENGTH, true);
            } // end while
            this.stopAllSoundsWithTag(dofus.sounds.AudioManager.ENVIRONMENT_NOISE_TAG);
        } // end if
        _global.clearInterval(this._nEnvironmentNoisesTimer);
        var _loc4 = this.api.lang.getEnvironment(environmentID);
        if (_loc4 == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "playEnvironment", "Pour environmentID=" + environmentID + ", oEnvironment"), "dofus.sounds.AudioManager::playEnvironment", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 328);
            return;
        } // end if
        this._aLatestEnvironmentBackground = new Array();
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < _loc4.bg.length)
        {
            var _loc6 = this.getElementFromEffect(this.api.lang.getEffect(Number(_loc4.bg[_loc5])));
            _loc6.mute = this._bEnvironmentMute;
            _loc6.loops = dofus.sounds.AudioElement.INFINITE_LOOP;
            _loc6.baseVolume = 100;
            _loc6.volume = this._nEnvironmentVolume;
            _loc6.tag = dofus.sounds.AudioManager.ENVIRONMENT_TAG;
            this.playElement(_loc6);
            this._aLatestEnvironmentBackground.push(_loc6);
        } // end while
        this.nextEnvironmentNoise(_loc4);
        this._nLatestEnvironment = environmentID;
    };
    _loc1.playMusicFadeOutOld = function (musicID, bSaveOldMusic, fadeOutTime, forced)
    {
        if (!forced && (this._nLatestMusic == musicID && !this._bMusicMute) || musicID == 0)
        {
            return;
        } // end if
        if (this._aeLatestMusic != null)
        {
            this._aeLatestMusic.fadeOut(fadeOutTime, true);
            if (bSaveOldMusic)
            {
                this._nLatestSavedMusic = this._nLatestMusic;
            } // end if
        } // end if
        var _loc6 = this.getElementFromMusic(this.api.lang.getMusic(musicID));
        com.ankamagames.tools.Logger.out("L\'element pour l\'id " + musicID + " est " + _loc6, "dofus.sounds.AudioManager::playMusicFadeOutOld", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 368);
        _loc6.tag = dofus.sounds.AudioManager.MUSIC_TAG;
        _loc6.mute = this._bMusicMute;
        this.playElement(_loc6);
        this._aeLatestMusic = _loc6;
        this._nLatestMusic = musicID;
    };
    _loc1.playMusic = function (musicID, bSaveOldMusic)
    {
        com.ankamagames.tools.Logger.out("WG play music with ID " + musicID, "dofus.sounds.AudioManager::playMusic", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 383);
        this.playMusicFadeOutOld(musicID, bSaveOldMusic, dofus.sounds.AudioManager.MUSIC_FADE_OUT_LENGTH, false);
    };
    _loc1.backToOldMusic = function (bStartSmooth)
    {
        this.playMusic(this._nLatestSavedMusic, bStartSmooth);
    };
    _loc1.playEffect = function (effectID, customTag)
    {
        var _loc4 = this.getElementFromEffect(this.api.lang.getEffect(effectID));
        _loc4.tag = customTag == undefined ? (dofus.sounds.AudioManager.EFFECT_TAG) : (customTag);
        switch (customTag)
        {
            case dofus.sounds.AudioManager.MUSIC_TAG:
            {
                _loc4.mute = this._bMusicMute;
                break;
            } 
            case dofus.sounds.AudioManager.ENVIRONMENT_TAG:
            {
                _loc4.mute = this._bEnvironmentMute;
                break;
            } 
            case dofus.sounds.AudioManager.EFFECT_TAG:
            default:
            {
                _loc4.mute = this._bEffectMute;
                break;
            } 
        } // End of switch
        this.playElement(_loc4);
    };
    _loc1.playEffectFromElement = function (ae)
    {
        ae.tag = dofus.sounds.AudioManager.EFFECT_TAG;
        ae.mute = this._bEffectMute;
        this.playElement(ae);
    };
    _loc1.playMp3 = function (file)
    {
        var _loc3 = this.createAudioElement(file, false, true);
        this.playElement(_loc3);
    };
    _loc1.stopAllSoundsWithTag = function (sTag)
    {
        for (var k in this._aSoundsCollection)
        {
            var _loc3 = this._aSoundsCollection[k];
            if (_loc3.tag == sTag && _loc3.file != "fx/Versus")
            {
                _loc3.dispose();
            } // end if
        } // end of for...in
    };
    _loc1.stopAllSounds = function ()
    {
        for (var k in this._aSoundsCollection)
        {
            var _loc2 = this._aSoundsCollection[k];
            _loc2.dispose();
        } // end of for...in
        _global.clearInterval(this._nEnvironmentNoisesTimer);
        this._nLatestSavedMusic = -1;
        this._nLatestMusic = -1;
        this._nLatestEnvironment = -1;
    };
    _loc1.createAudioElement = function (file, streaming, music, package)
    {
        if (file == undefined)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "createAudioElement", "file"), "dofus.sounds.AudioManager::createAudioElement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 486);
            return (null);
        } // end if
        var _loc6 = music ? (this.getNextMusicIndex()) : (this.getNextSoundIndex());
        var _loc7 = this.getSoundContainer(_loc6, package);
        var _loc8 = new dofus.sounds.AudioElement(_loc6, file, _loc7, streaming);
        if (_loc8.duration != undefined && _loc8.duration > 0)
        {
            return (_loc8);
        } // end if
        if (package == dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT)
        {
            _loc7 = this.getSoundContainer(_loc6, dofus.sounds.AudioManager.PACKAGE_EFFECT_LOC);
            _loc8 = new dofus.sounds.AudioElement(_loc6, file, _loc7, streaming);
            return (_loc8);
        } // end if
        return (_loc8);
    };
    _loc1.playElement = function (soundElement)
    {
        if (soundElement == undefined)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "playSound", "soundElement"), "dofus.sounds.AudioManager::playElement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 519);
            return;
        } // end if
        if (!this._bAudioEnabled)
        {
            return;
        } // end if
        this._aSoundsCollection["SND" + soundElement.uniqID] = soundElement;
        this.addToQueue({object: soundElement, method: soundElement.startElement});
    };
    _loc1.getNextSoundIndex = function (Void)
    {
        ++this._nCurrentSoundIndex;
        if (this._nCurrentSoundIndex > dofus.sounds.AudioManager.MAX_SOUND_INDEX)
        {
            this._nCurrentSoundIndex = dofus.sounds.AudioManager.SOUND_INDEX;
        } // end if
        var _loc3 = this._aSoundsCollection["SND" + this._nCurrentSoundIndex];
        _loc3.dispose();
        return (this._nCurrentSoundIndex);
    };
    _loc1.getNextMusicIndex = function (Void)
    {
        ++this._nCurrentMusicIndex;
        if (this._nCurrentMusicIndex > dofus.sounds.AudioManager.MAX_MUSIC_INDEX)
        {
            this._nCurrentMusicIndex = dofus.sounds.AudioManager.MUSIC_INDEX;
        } // end if
        var _loc3 = this._aSoundsCollection["SND" + this._nCurrentMusicIndex];
        _loc3.dispose();
        return (this._nCurrentMusicIndex);
    };
    _loc1.getSoundContainer = function (nUniqID, package)
    {
        if (!dofus.Constants.USING_PACKED_SOUNDS || package == null)
        {
            return (dofus.sounds.AudioManager._mcSoundNest.createEmptyMovieClip("SND" + nUniqID, nUniqID));
        }
        else
        {
            switch (package)
            {
                case dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT:
                {
                    return (dofus.sounds.AudioManager._pckEffects.createEmptyMovieClip("FX" + nUniqID, nUniqID));
                    break;
                } 
                case dofus.sounds.AudioManager.PACKAGE_TYPE_MUSIC:
                {
                    return (dofus.sounds.AudioManager._pckMusics.createEmptyMovieClip("MU" + nUniqID, nUniqID));
                    break;
                } 
                case dofus.sounds.AudioManager.PACKAGE_EFFECT_LOC:
                {
                    return (dofus.sounds.AudioManager._localisedEffects.createEmptyMovieClip("FX" + nUniqID, nUniqID));
                } 
            } // End of switch
        } // end else if
        return (null);
    };
    _loc1.getElementFromLinkname = function (sLink)
    {
        var _loc3 = this.createAudioElement(dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT + sLink, true, false, dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT);
        _loc3.baseVolume = 100;
        _loc3.volume = this._nEffectVolume;
        _loc3.offset = 0;
        _loc3.loops = dofus.sounds.AudioElement.ONESHOT_SAMPLE;
        return (_loc3);
    };
    _loc1.getElementFromEffect = function (oEffect)
    {
        var _loc3 = this.createAudioElement((dofus.Constants.USING_PACKED_SOUNDS ? (dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT) : (dofus.Constants.AUDIO_EFFECTS_PATH)) + oEffect.f, oEffect.s, false, dofus.Constants.USING_PACKED_SOUNDS ? (dofus.sounds.AudioManager.PACKAGE_TYPE_EFFECT) : (null));
        _loc3.baseVolume = oEffect.v;
        _loc3.volume = oEffect.v / 100 * this._nEffectVolume;
        _loc3.offset = oEffect.o;
        _loc3.loops = oEffect.l == true ? (dofus.sounds.AudioElement.INFINITE_LOOP) : (dofus.sounds.AudioElement.ONESHOT_SAMPLE);
        return (_loc3);
    };
    _loc1.getElementFromMusic = function (oMusic)
    {
        var _loc3 = this.createAudioElement((dofus.Constants.USING_PACKED_SOUNDS ? (dofus.sounds.AudioManager.PACKAGE_TYPE_MUSIC) : (dofus.Constants.AUDIO_MUSICS_PATH)) + oMusic.f, oMusic.s, true, dofus.Constants.USING_PACKED_SOUNDS ? (dofus.sounds.AudioManager.PACKAGE_TYPE_MUSIC) : (null));
        _loc3.baseVolume = oMusic.v;
        _loc3.volume = oMusic.v / 100 * this._nMusicVolume;
        _loc3.offset = oMusic.o;
        _loc3.loops = oMusic.l == true ? (dofus.sounds.AudioElement.INFINITE_LOOP) : (dofus.sounds.AudioElement.ONESHOT_SAMPLE);
        return (_loc3);
    };
    _loc1.nextEnvironmentNoise = function (oEnvironment)
    {
        _global.clearInterval(this._nEnvironmentNoisesTimer);
        if (oEnvironment == undefined)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "nextEnvironmentNoise", "oEnvironment"), "dofus.sounds.AudioManager::nextEnvironmentNoise", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 654);
            return;
        } // end if
        var _loc3 = (oEnvironment.mind + Math.round(Math.random() * oEnvironment.maxd)) * 1000;
        _loc3 = Math.max(10, _loc3);
        this._nEnvironmentNoisesTimer = _global.setInterval(this, "onPlayNoise", _loc3, oEnvironment);
    };
    _loc1.onPlayNoise = function (environment)
    {
        if (environment == undefined)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "onPlayNoise", "environment"), "dofus.sounds.AudioManager::onPlayNoise", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 677);
            return;
        } // end if
        var _loc3 = environment.n[Math.floor(environment.n.length * Math.random())];
        this.playEffect(_loc3, dofus.sounds.AudioManager.ENVIRONMENT_NOISE_TAG);
        this.nextEnvironmentNoise(environment);
    };
    _loc1.muteChanged = function ()
    {
        if (this._bMusicMute && (this._bEnvironmentMute && this._bEffectMute))
        {
            this._bAudioEnabled = false;
        }
        else if (!this._bAudioEnabled)
        {
            this._bAudioEnabled = true;
            this.playMusicFadeOutOld(this.api.datacenter.Map.musicID, false, dofus.sounds.AudioManager.MUSIC_FADE_OUT_LENGTH, true);
        } // end else if
    };
    _loc1.addProperty("effectVolume", _loc1.__get__effectVolume, _loc1.__set__effectVolume);
    _loc1.addProperty("musicMute", _loc1.__get__musicMute, _loc1.__set__musicMute);
    _loc1.addProperty("musicVolume", _loc1.__get__musicVolume, _loc1.__set__musicVolume);
    _loc1.addProperty("environmentVolume", _loc1.__get__environmentVolume, _loc1.__set__environmentVolume);
    _loc1.addProperty("effectMute", _loc1.__get__effectMute, _loc1.__set__effectMute);
    _loc1.addProperty("environmentMute", _loc1.__get__environmentMute, _loc1.__set__environmentMute);
    _loc1.addProperty("enabled", _loc1.__get__enabled, _loc1.__set__enabled);
    _loc1.addProperty("events", _loc1.__get__events, function ()
    {
    });
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } // end if
    }).addProperty("soundNest", (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } // end if
    }).__get__soundNest, (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } // end if
    }).__set__soundNest);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } // end if
    }).MUSIC_INDEX = 1000;
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } // end if
    }).MAX_MUSIC_INDEX = 1010;
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } // end if
    }).SOUND_INDEX = 1;
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } // end if
    }).MAX_SOUND_INDEX = 200;
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } // end if
    }).MUSIC_FADE_OUT_LENGTH = 4;
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } // end if
    }).ENVIRONMENT_TAG = "TAG_ENVIRONMENT";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } // end if
    }).ENVIRONMENT_NOISE_TAG = "TAG_ENVIRONMENT_NOISE";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } // end if
    }).EFFECT_TAG = "TAG_EFFECT";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } } // end if
    }).MUSIC_TAG = "TAG_MUSIC";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } } } // end if
    }).PACKAGE_TYPE_MUSIC = "mu/";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } } } } // end if
    }).PACKAGE_TYPE_EFFECT = "fx/";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } } } } } // end if
    }).PACKAGE_EFFECT_LOC = "lo/";
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } } } } } } // end if
    }).instance = null;
    (_global.dofus.sounds.AudioManager = function ()
    {
        super();
        if (dofus.sounds.AudioManager._mcSoundNest == null)
        {
            com.ankamagames.tools.Logger.out(new com.ankamagames.exceptions.NullPointerException(this, "AudioManager", "", "_mcSoundNest"), "dofus.sounds.AudioManager::AudioManager", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/sounds/AudioManager.as", 204);
            return;
        } } } } } } } } } } } } } } } } } } } } } } } // end if
    })._bInitialized = false;
    _loc1._bAudioEnabled = true;
    _loc1._nCurrentSoundIndex = dofus.sounds.AudioManager.SOUND_INDEX;
    _loc1._nCurrentMusicIndex = dofus.sounds.AudioManager.MUSIC_INDEX;
    _loc1._bEnvironmentMute = false;
    _loc1._bMusicMute = false;
    _loc1._bEffectMute = false;
    _loc1._nEnvironmentVolume = 100;
    _loc1._nMusicVolume = 100;
    _loc1._nEffectVolume = 100;
    _loc1._aSoundsCollection = new Array();
    _loc1._nLatestSavedMusic = -1;
    _loc1._nLatestMusic = -1;
    _loc1._aeLatestMusic = null;
    _loc1._nLatestEnvironment = -1;
    _loc1._aLatestEnvironmentBackground = null;
    _loc1._nEnvironmentNoisesTimer = -1;
} // end if
#endinitclip
