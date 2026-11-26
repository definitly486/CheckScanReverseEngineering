.class public final Lcom/posthog/internal/GsonPropertyTypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc4;
.implements Lwd4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/GsonPropertyTypeAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc4<",
        "Lcom/posthog/internal/b;",
        ">;",
        "Lwd4<",
        "Lcom/posthog/internal/b;",
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

    sget-object p0, Lcom/posthog/internal/b;->Companion:Lcom/posthog/internal/b$a;

    invoke-virtual {p1}, Lpc4;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/posthog/internal/b$a;->a(Ljava/lang/String;)Lcom/posthog/internal/b;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    check-cast p1, Lcom/posthog/internal/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    new-instance p2, Lqd4;

    sget-object p3, Lcom/posthog/internal/GsonPropertyTypeAdapter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    const-string p0, "person"

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-object p0

    :cond_1
    const-string p0, "flag"

    goto :goto_0

    :cond_2
    const-string p0, "cohort"

    :goto_0
    invoke-direct {p2, p0}, Lqd4;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_3
    return-object p0
.end method
