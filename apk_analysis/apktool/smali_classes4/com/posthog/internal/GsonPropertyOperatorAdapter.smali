.class public final Lcom/posthog/internal/GsonPropertyOperatorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc4;
.implements Lwd4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/GsonPropertyOperatorAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc4<",
        "Lcom/posthog/internal/a;",
        ">;",
        "Lwd4<",
        "Lcom/posthog/internal/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/posthog/internal/a;->Companion:Lcom/posthog/internal/a$a;

    invoke-virtual {p1}, Lpc4;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/posthog/internal/a$a;->a(Ljava/lang/String;)Lcom/posthog/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    check-cast p1, Lcom/posthog/internal/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance p2, Lqd4;

    sget-object p3, Lcom/posthog/internal/GsonPropertyOperatorAdapter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object p0

    :pswitch_0
    const-string p0, "semver_wildcard"

    goto :goto_0

    :pswitch_1
    const-string p0, "semver_caret"

    goto :goto_0

    :pswitch_2
    const-string p0, "semver_tilde"

    goto :goto_0

    :pswitch_3
    const-string p0, "semver_lte"

    goto :goto_0

    :pswitch_4
    const-string p0, "semver_lt"

    goto :goto_0

    :pswitch_5
    const-string p0, "semver_gte"

    goto :goto_0

    :pswitch_6
    const-string p0, "semver_gt"

    goto :goto_0

    :pswitch_7
    const-string p0, "semver_neq"

    goto :goto_0

    :pswitch_8
    const-string p0, "semver_eq"

    goto :goto_0

    :pswitch_9
    const-string p0, "flag_evaluates_to"

    goto :goto_0

    :pswitch_a
    const-string p0, "is_date_after"

    goto :goto_0

    :pswitch_b
    const-string p0, "is_date_before"

    goto :goto_0

    :pswitch_c
    const-string p0, "lte"

    goto :goto_0

    :pswitch_d
    const-string p0, "lt"

    goto :goto_0

    :pswitch_e
    const-string p0, "gte"

    goto :goto_0

    :pswitch_f
    const-string p0, "gt"

    goto :goto_0

    :pswitch_10
    const-string p0, "in"

    goto :goto_0

    :pswitch_11
    const-string p0, "not_regex"

    goto :goto_0

    :pswitch_12
    const-string p0, "regex"

    goto :goto_0

    :pswitch_13
    const-string p0, "not_icontains"

    goto :goto_0

    :pswitch_14
    const-string p0, "icontains"

    goto :goto_0

    :pswitch_15
    const-string p0, "is_not_set"

    goto :goto_0

    :pswitch_16
    const-string p0, "is_set"

    goto :goto_0

    :pswitch_17
    const-string p0, "is_not"

    goto :goto_0

    :pswitch_18
    const-string p0, "exact"

    goto :goto_0

    :pswitch_19
    const-string p0, "unknown"

    :goto_0
    invoke-direct {p2, p0}, Lqd4;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
