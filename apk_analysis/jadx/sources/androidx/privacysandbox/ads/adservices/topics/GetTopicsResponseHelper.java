package androidx.privacysandbox.ads.adservices.topics;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.lt0;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class GetTopicsResponseHelper {
    public static final GetTopicsResponseHelper INSTANCE = new GetTopicsResponseHelper();

    private GetTopicsResponseHelper() {
    }

    public final GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse getTopicsResponse) {
        getTopicsResponse.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator<android.adservices.topics.Topic> it = getTopicsResponse.getTopics().iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic topicC = lt0.c(it.next());
            arrayList.add(new Topic(topicC.getTaxonomyVersion(), topicC.getModelVersion(), topicC.getTopicId()));
        }
        return new GetTopicsResponse(arrayList);
    }

    @ExperimentalFeatures.Ext11OptIn
    public final GetTopicsResponse convertResponseWithEncryptedTopics$ads_adservices_release(android.adservices.topics.GetTopicsResponse getTopicsResponse) {
        getTopicsResponse.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator<android.adservices.topics.Topic> it = getTopicsResponse.getTopics().iterator();
        while (it.hasNext()) {
            android.adservices.topics.Topic topicC = lt0.c(it.next());
            arrayList.add(new Topic(topicC.getTaxonomyVersion(), topicC.getModelVersion(), topicC.getTopicId()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (android.adservices.topics.EncryptedTopic encryptedTopic : getTopicsResponse.getEncryptedTopics()) {
            byte[] encryptedTopic2 = encryptedTopic.getEncryptedTopic();
            encryptedTopic2.getClass();
            String keyIdentifier = encryptedTopic.getKeyIdentifier();
            keyIdentifier.getClass();
            byte[] encapsulatedKey = encryptedTopic.getEncapsulatedKey();
            encapsulatedKey.getClass();
            arrayList2.add(new EncryptedTopic(encryptedTopic2, keyIdentifier, encapsulatedKey));
        }
        return new GetTopicsResponse(arrayList, arrayList2);
    }
}
