package androidx.camera.video.internal.config;

import androidx.camera.video.AudioSpec;
import androidx.camera.video.VideoSpec;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class FormatComboRegistry {
    private final Map<Integer, Map<String, Set<FormatCombo>>> formatComboMapping;

    public static final class Builder {
        private final Map<Integer, Map<String, Set<FormatCombo>>> formatComboMapping = new LinkedHashMap();

        public static final class ContainerScope {
            private final int container;
            private final Map<String, Set<FormatCombo>> videoMap;

            public ContainerScope(int i, Map<String, Set<FormatCombo>> map) {
                map.getClass();
                this.container = i;
                this.videoMap = map;
            }

            public final void support(List<String> list, List<String> list2) {
                list.getClass();
                list2.getClass();
                for (String str : list) {
                    Map<String, Set<FormatCombo>> map = this.videoMap;
                    Set<FormatCombo> linkedHashSet = map.get(str);
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet<>();
                        map.put(str, linkedHashSet);
                    }
                    Set<FormatCombo> set = linkedHashSet;
                    Iterator<T> it = list2.iterator();
                    while (it.hasNext()) {
                        set.add(new FormatCombo(this.container, str, (String) it.next()));
                    }
                    set.add(new FormatCombo(this.container, str, null));
                }
                Map<String, Set<FormatCombo>> map2 = this.videoMap;
                Set<FormatCombo> linkedHashSet2 = map2.get(null);
                if (linkedHashSet2 == null) {
                    linkedHashSet2 = new LinkedHashSet<>();
                    map2.put(null, linkedHashSet2);
                }
                Set<FormatCombo> set2 = linkedHashSet2;
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    set2.add(new FormatCombo(this.container, null, (String) it2.next()));
                }
            }
        }

        public final FormatComboRegistry build() {
            return new FormatComboRegistry(this.formatComboMapping, null);
        }

        public final void container(int i, nl3<? super ContainerScope, j59> nl3Var) {
            nl3Var.getClass();
            Map<Integer, Map<String, Set<FormatCombo>>> map = this.formatComboMapping;
            Integer numValueOf = Integer.valueOf(i);
            Map<String, Set<FormatCombo>> linkedHashMap = map.get(numValueOf);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap<>();
                map.put(numValueOf, linkedHashMap);
            }
            nl3Var.invoke(new ContainerScope(i, linkedHashMap));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FormatComboRegistry(Map<Integer, ? extends Map<String, ? extends Set<FormatCombo>>> map) {
        this.formatComboMapping = map;
    }

    public final List<FormatCombo> getCombos(int i, String str, String str2) {
        str.getClass();
        str2.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = (i == -1 ? this.formatComboMapping.keySet() : u96.h(Integer.valueOf(i))).iterator();
        while (it.hasNext()) {
            Map<String, Set<FormatCombo>> map = this.formatComboMapping.get(Integer.valueOf(((Number) it.next()).intValue()));
            if (map != null) {
                Iterator it2 = (str.equals(VideoSpec.MIME_TYPE_UNSPECIFIED) ? map.keySet() : u96.h(str)).iterator();
                while (it2.hasNext()) {
                    Set<FormatCombo> set = map.get((String) it2.next());
                    if (set != null) {
                        if (str2.equals(AudioSpec.MIME_TYPE_UNSPECIFIED)) {
                            arrayList.addAll(set);
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj : set) {
                                if (aa4.e(((FormatCombo) obj).getAudioMime(), str2)) {
                                    arrayList2.add(obj);
                                }
                            }
                            arrayList.addAll(arrayList2);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final List<FormatCombo> getCombosForAudio(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map<String, Set<FormatCombo>>> it = this.formatComboMapping.values().iterator();
        while (it.hasNext()) {
            for (Set<FormatCombo> set : it.next().values()) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : set) {
                    if (aa4.e(((FormatCombo) obj).getAudioMime(), str)) {
                        arrayList2.add(obj);
                    }
                }
                arrayList.addAll(arrayList2);
            }
        }
        return arrayList;
    }

    public final List<FormatCombo> getCombosForVideo(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map<String, Set<FormatCombo>>> it = this.formatComboMapping.values().iterator();
        while (it.hasNext()) {
            Set<FormatCombo> set = it.next().get(str);
            if (set != null) {
                arrayList.addAll(set);
            }
        }
        return arrayList;
    }

    public /* synthetic */ FormatComboRegistry(Map map, jh2 jh2Var) {
        this(map);
    }
}
