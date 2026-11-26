.class public final Lcom/posthog/internal/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/posthog/internal/a;
    .locals 1

    if-eqz p0, :cond_19

    sget-object v0, Lcom/posthog/internal/a;->Companion:Lcom/posthog/internal/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "not_regex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/posthog/internal/a;->NOT_REGEX:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_1
    const-string v0, "regex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/posthog/internal/a;->REGEX:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_2
    const-string v0, "exact"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/posthog/internal/a;->EXACT:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_3
    const-string v0, "lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    sget-object p0, Lcom/posthog/internal/a;->LTE:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_4
    const-string v0, "gte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object p0, Lcom/posthog/internal/a;->GTE:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_5
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object p0, Lcom/posthog/internal/a;->LT:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_6
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object p0, Lcom/posthog/internal/a;->IN:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_7
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object p0, Lcom/posthog/internal/a;->GT:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_8
    const-string v0, "semver_lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_LT:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_9
    const-string v0, "semver_gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_GT:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_a
    const-string v0, "semver_eq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_EQ:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_b
    const-string v0, "semver_wildcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_WILDCARD:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_c
    const-string v0, "is_not_set"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    sget-object p0, Lcom/posthog/internal/a;->IS_NOT_SET:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_d
    const-string v0, "is_date_before"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    sget-object p0, Lcom/posthog/internal/a;->IS_DATE_BEFORE:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_e
    const-string v0, "flag_evaluates_to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    sget-object p0, Lcom/posthog/internal/a;->FLAG_EVALUATES_TO:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_f
    const-string v0, "semver_tilde"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_TILDE:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_10
    const-string v0, "semver_caret"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_CARET:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_11
    const-string v0, "is_date_after"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    sget-object p0, Lcom/posthog/internal/a;->IS_DATE_AFTER:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_12
    const-string v0, "is_set"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    sget-object p0, Lcom/posthog/internal/a;->IS_SET:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_13
    const-string v0, "is_not"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    sget-object p0, Lcom/posthog/internal/a;->IS_NOT:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_14
    const-string v0, "icontains"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    sget-object p0, Lcom/posthog/internal/a;->ICONTAINS:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_15
    const-string v0, "not_icontains"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    sget-object p0, Lcom/posthog/internal/a;->NOT_ICONTAINS:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_16
    const-string v0, "semver_neq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_NEQ:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_17
    const-string v0, "semver_lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_LTE:Lcom/posthog/internal/a;

    return-object p0

    :sswitch_18
    const-string v0, "semver_gte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    :cond_17
    :goto_0
    sget-object p0, Lcom/posthog/internal/a;->UNKNOWN:Lcom/posthog/internal/a;

    return-object p0

    :cond_18
    sget-object p0, Lcom/posthog/internal/a;->SEMVER_GTE:Lcom/posthog/internal/a;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x74364a3f -> :sswitch_18
        -0x7436377a -> :sswitch_17
        -0x743631bd -> :sswitch_16
        -0x608b88e4 -> :sswitch_15
        -0x51c10278 -> :sswitch_14
        -0x4651bdc2 -> :sswitch_13
        -0x4651ac33 -> :sswitch_12
        -0x437757c0 -> :sswitch_11
        -0x400d7a14 -> :sswitch_10
        -0x3f1a5e3f -> :sswitch_f
        -0x2bb8b42d -> :sswitch_e
        -0x29d31665 -> :sswitch_d
        -0x27ac211f -> :sswitch_c
        -0x25d96d2f -> :sswitch_b
        -0x1443d11d -> :sswitch_a
        -0x1443d0dc -> :sswitch_9
        -0x1443d041 -> :sswitch_8
        0xced -> :sswitch_7
        0xd25 -> :sswitch_6
        0xd88 -> :sswitch_5
        0x19118 -> :sswitch_4
        0x1a3dd -> :sswitch_3
        0x5c74aff -> :sswitch_2
        0x675f047 -> :sswitch_1
        0x60ef53db -> :sswitch_0
    .end sparse-switch
.end method
