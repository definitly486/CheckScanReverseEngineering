.class public final Lyads/uw2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/jo2;

.field public final b:Lzo7;

.field public final c:Lzo7;

.field public final d:Lcl4;


# direct methods
.method public constructor <init>(Lyads/sw2;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/r8;

    invoke-direct {v0}, Lyads/r8;-><init>()V

    new-instance v1, Lyads/jo2;

    invoke-direct {v1}, Lyads/jo2;-><init>()V

    iput-object v1, p0, Lyads/uw2;->a:Lyads/jo2;

    new-instance v1, Luz4;

    invoke-direct {v1}, Luz4;-><init>()V

    const-string v2, "ad_unit_id"

    iget-object v3, p1, Lyads/sw2;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "width"

    iget-object v3, p1, Lyads/sw2;->C:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "height"

    iget-object v3, p1, Lyads/sw2;->D:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ad_size_type"

    iget-object v3, p1, Lyads/sw2;->E:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "orientation"

    iget-object v3, p1, Lyads/sw2;->F:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ads_count"

    iget-object v3, p1, Lyads/sw2;->s:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "screen_width"

    iget-object v3, p1, Lyads/sw2;->H:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "screen_height"

    iget-object v3, p1, Lyads/sw2;->I:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "scalefactor"

    iget-object v3, p1, Lyads/sw2;->J:Ljava/lang/Float;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ad_type"

    iget-object v3, p1, Lyads/sw2;->B:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "network_type"

    iget-object v3, p1, Lyads/sw2;->M:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "carrier"

    iget-object v3, p1, Lyads/sw2;->N:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "dnt"

    iget-object v3, p1, Lyads/sw2;->S:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "gaid_reset"

    iget-object v3, p1, Lyads/sw2;->T:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "huawei_dnt"

    iget-object v3, p1, Lyads/sw2;->V:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "image_sizes"

    iget-object v3, p1, Lyads/sw2;->b0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "response_ad_format"

    iget-object v3, p1, Lyads/sw2;->c0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "open_bidding_data"

    iget-object v3, p1, Lyads/sw2;->f0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "session_random"

    iget-object v3, p1, Lyads/sw2;->d0:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "charset"

    iget-object v3, p1, Lyads/sw2;->e0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lyads/sw2;->j0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lyads/sw2;->k0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lyads/sw2;->l0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lyads/sw2;->m0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lyads/sw2;->n0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lyads/sw2;->Y:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "locale"

    iget-object v3, p1, Lyads/sw2;->o0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "content_language"

    iget-object v3, p1, Lyads/sw2;->p0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "device_languages"

    iget-object v3, p1, Lyads/sw2;->q0:Ljava/util/List;

    if-eqz v3, :cond_0

    const-string v4, ":"

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "app_id"

    iget-object v3, p1, Lyads/sw2;->r0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "app_version_code"

    iget-object v3, p1, Lyads/sw2;->s0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "app_version_name"

    iget-object v3, p1, Lyads/sw2;->t0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "appmetrica_version"

    iget-object v3, p1, Lyads/sw2;->G0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "screen_dpi"

    iget v3, p1, Lyads/sw2;->v0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "safe_area_inset_left"

    iget v3, p1, Lyads/sw2;->w0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "safe_area_inset_top"

    iget v3, p1, Lyads/sw2;->x0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "safe_area_inset_right"

    iget v3, p1, Lyads/sw2;->y0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "safe_area_inset_bottom"

    iget v3, p1, Lyads/sw2;->z0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "cutout_safe_area_inset_top"

    iget v3, p1, Lyads/sw2;->A0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "cutout_safe_area_inset_bottom"

    iget v3, p1, Lyads/sw2;->B0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "user_consent"

    iget-object v3, p1, Lyads/sw2;->o:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "gdpr"

    iget-object v3, p1, Lyads/sw2;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "gdpr_consent"

    iget-object v3, p1, Lyads/sw2;->v:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "cmp_present"

    iget-boolean v3, p1, Lyads/sw2;->t:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "parsed_purpose_consents"

    iget-object v3, p1, Lyads/sw2;->w:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "parsed_vendor_consents"

    iget-object v3, p1, Lyads/sw2;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "addtl_consent"

    iget-object v3, p1, Lyads/sw2;->y:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "bidding_data"

    iget-object v3, p1, Lyads/sw2;->g0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "prefetched_mediation_data"

    iget-object v3, p1, Lyads/sw2;->h0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "connected_network_ids"

    iget-object v3, p1, Lyads/sw2;->i0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "sdk_version"

    iget-object v3, p1, Lyads/sw2;->E0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "sdk_version_name"

    iget-object v3, p1, Lyads/sw2;->F0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "sdk_vendor"

    const-string v3, "yandex"

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "preferred_theme"

    iget-object v3, p1, Lyads/sw2;->H0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "device_theme"

    iget-object v3, p1, Lyads/sw2;->I0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "age_restricted_user"

    iget-object v3, p1, Lyads/sw2;->p:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "view_size_info"

    iget-object v3, p1, Lyads/sw2;->J0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "web_view_available"

    iget-object v3, p1, Lyads/sw2;->K0:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "startup_version"

    iget-object v3, p1, Lyads/sw2;->L0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "session-data"

    iget-object v3, p1, Lyads/sw2;->O0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "user-agent"

    iget-object v3, p1, Lyads/sw2;->N0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "stub_reason"

    iget-object v3, p1, Lyads/sw2;->R0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "gms_available"

    iget-object v3, p1, Lyads/sw2;->S0:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "opt_out"

    iget-object v3, p1, Lyads/sw2;->T0:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "ram"

    iget-object v3, p1, Lyads/sw2;->U0:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "cpu_cores"

    iget-object v3, p1, Lyads/sw2;->V0:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "timezone"

    iget-object v3, p1, Lyads/sw2;->W0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "hour_format"

    iget-object v3, p1, Lyads/sw2;->X0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "disk_free"

    iget-object v3, p1, Lyads/sw2;->Y0:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "disk_total"

    iget-object v3, p1, Lyads/sw2;->Z0:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "time_since_booted"

    iget-object v3, p1, Lyads/sw2;->a1:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "video_decoders"

    iget-object v3, p1, Lyads/sw2;->b1:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p1, Lyads/sw2;->M0:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lyads/sw2;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-boolean v2, p1, Lyads/sw2;->l:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lyads/sw2;->k:Z

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "uuid"

    iget-object v3, p1, Lyads/sw2;->z:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-boolean v2, p1, Lyads/sw2;->l:Z

    if-nez v2, :cond_5

    const-string v2, "age"

    iget-object v3, p1, Lyads/sw2;->C0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "gender"

    iget-object v3, p1, Lyads/sw2;->D0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "context_query"

    iget-object v3, p1, Lyads/sw2;->Z:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "context_taglist"

    iget-object v3, p1, Lyads/sw2;->a0:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "google_aid"

    iget-object v3, p1, Lyads/sw2;->U:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "app_set_id"

    iget-object v3, p1, Lyads/sw2;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "huawei_oaid"

    iget-object v3, p1, Lyads/sw2;->W:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "mauid"

    iget-object v3, p1, Lyads/sw2;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyads/r8;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lyads/sw2;->u0:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mcc"

    iget-object v2, p1, Lyads/sw2;->K:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mnc"

    iget-object v2, p1, Lyads/sw2;->L:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cellid"

    iget-object v2, p1, Lyads/sw2;->P:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lac"

    iget-object v2, p1, Lyads/sw2;->Q:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wifi"

    iget-object v2, p1, Lyads/sw2;->R:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "battery_charge"

    iget-object v2, p1, Lyads/sw2;->X:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "server_side_client_ip"

    iget-object v2, p1, Lyads/sw2;->P0:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ipv6"

    iget-object v2, p1, Lyads/sw2;->Q0:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-boolean v0, p1, Lyads/sw2;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p1, Lyads/sw2;->O:Lyads/n8;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lyads/n8;->f:Landroid/location/Location;

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p1, Lyads/sw2;->G:Landroid/location/Location;

    :cond_7
    if-eqz v0, :cond_a

    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_9

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_8

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_8
    :goto_3
    monitor-exit v2

    move-object v2, v3

    goto :goto_5

    :goto_4
    monitor-exit v2

    throw p0

    :cond_9
    :goto_5
    invoke-virtual {v2}, Lyads/zg5;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lat"

    invoke-virtual {p0, v1, v3, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lon"

    invoke-virtual {p0, v1, v3, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_timestamp"

    invoke-virtual {p0, v1, v3, v2}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "precision"

    invoke-virtual {p0, v1, v2, v0}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v1}, Luz4;->b()Luz4;

    move-result-object v0

    invoke-virtual {v0}, Luz4;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object v0

    iput-object v0, p0, Lyads/uw2;->b:Lzo7;

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    iget-object p1, p1, Lyads/sw2;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p1

    invoke-virtual {p1}, Luz4;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object p1

    iput-object p1, p0, Lyads/uw2;->c:Lzo7;

    new-instance p1, Lr54;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lr54;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/uw2;->d:Lcl4;

    return-void
.end method

.method public static final a(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 2

    .line 43
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/uw2;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/uw2;->b:Lzo7;

    iget-object p0, p0, Lyads/uw2;->c:Lzo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Lzo7;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    new-instance p0, Lxr;

    invoke-direct {p0, v1}, Lxr;-><init>([Ljava/lang/Object;)V

    invoke-static {p0}, Ldp7;->g(Lzo7;)Lnc3;

    move-result-object p0

    new-instance v0, Lmg6;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lmg6;-><init>(I)V

    const-string v1, "&"

    const/16 v2, 0x1e

    invoke-static {p0, v1, v0, v2}, Ljp7;->m(Lzo7;Ljava/lang/String;Lmg6;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lyads/uw2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 44
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object p0, p0, Lyads/uw2;->a:Lyads/jo2;

    .line 46
    iget-object p0, p0, Lyads/jo2;->a:Ljava/util/Set;

    .line 47
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 48
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ":"

    invoke-static {p0, p2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/uw2;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
