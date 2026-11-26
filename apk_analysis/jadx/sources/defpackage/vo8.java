package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface vo8 {
    @z06("api/v2.1/tasks/{taskId}/claim")
    Object a(@k46("taskId") int i, e02<? super go8> e02Var);

    @z06("api/v2.1/tasks/{taskId}/action")
    Object b(@k46("taskId") int i, e02<? super ml8> e02Var);

    @gn3("api/v2.1/tasks/{taskId}/checkboxSubtasksInfo")
    Object c(@k46("taskId") int i, e02<? super jm8> e02Var);

    @gn3("api/v2.1/tasks/{taskId}")
    Object d(@k46("taskId") int i, e02<? super bo8> e02Var);

    @gn3("api/v2.1/tasks/{taskId}/rewardSubtasksInfo")
    Object e(@k46("taskId") int i, e02<? super lo8> e02Var);

    @gn3("api/v2.1/tasks/main")
    Object f(@lv6("isFilterBannersByView") boolean z, e02<? super zo8> e02Var);

    @z06("api/v2.1/tasks/{taskId}/subtasks/{subtaskId}/action")
    Object g(@k46("taskId") int i, @k46("subtaskId") int i2, e02<? super ko8> e02Var);

    @z06("api/v2.1/tasks/{id}/action")
    Object h(@k46(TtmlNode.ATTR_ID) int i, e02<? super nq6> e02Var);

    @gn3("api/v2.1/tasks")
    Object i(e02<? super List<fo8>> e02Var);

    @gn3("api/v2.1/tasks/{taskId}/details")
    Object j(@k46("taskId") int i, e02<? super tm8> e02Var);

    @gn3("api/v2.1/badge/{badgeId}")
    Object k(@k46("badgeId") int i, e02<? super kn8> e02Var);

    @z06("api/v2.1/tasks/{taskId}/subtasks/{subtaskId}/action")
    Object l(@k46("taskId") int i, @k46("subtaskId") int i2, e02<? super km8> e02Var);

    @z06("api/v2.1/tasks/{taskId}/subtasks/{subtaskId}/claim")
    Object m(@k46("taskId") int i, @k46("subtaskId") int i2, e02<? super go8> e02Var);

    @gn3("api/v2.1/tasks/{taskId}/checkboxInfo")
    Object n(@k46("taskId") int i, e02<? super hm8> e02Var);

    @z06("api/v2.1/ad/promo/view")
    Object o(@lk0 j8 j8Var, e02<? super ol8> e02Var);

    @gn3("api/v2.1/tasks/{taskId}")
    Object p(@k46("taskId") int i, e02<? super jo8> e02Var);

    @gn3("api/v2.1/tasks/{taskId}/subtasksInfo")
    Object q(@k46("taskId") int i, e02<? super mo8> e02Var);

    @gn3("api/v2.1/ad/promo/available")
    Object r(e02<? super nl8> e02Var);
}
