.class public final Lcom/posthog/internal/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/posthog/internal/b;
    .locals 2

    if-eqz p0, :cond_6

    sget-object v0, Lcom/posthog/internal/b;->Companion:Lcom/posthog/internal/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50c3140b

    if-eq v0, v1, :cond_4

    const v1, -0x3b1c64ab

    if-eq v0, v1, :cond_2

    const v1, 0x2fff6c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "flag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/posthog/internal/b;->FLAG:Lcom/posthog/internal/b;

    return-object p0

    :cond_2
    const-string v0, "person"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/posthog/internal/b;->PERSON:Lcom/posthog/internal/b;

    return-object p0

    :cond_4
    const-string v0, "cohort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/posthog/internal/b;->COHORT:Lcom/posthog/internal/b;

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/posthog/internal/b;->PERSON:Lcom/posthog/internal/b;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
