.class public final Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd4;
.implements Lnc4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwd4<",
        "Lcom/posthog/internal/replay/RRMouseInteraction;",
        ">;",
        "Lnc4<",
        "Lcom/posthog/internal/replay/RRMouseInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field private final config:Lnb6;


# direct methods
.method public constructor <init>(Lnb6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->config:Lnb6;

    return-void
.end method


# virtual methods
.method public deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object p2, Lcom/posthog/internal/replay/RRMouseInteraction;->Companion:Lcom/posthog/internal/replay/RRMouseInteraction$Companion;

    invoke-virtual {p1}, Lpc4;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/posthog/internal/replay/RRMouseInteraction$Companion;->fromValue(I)Lcom/posthog/internal/replay/RRMouseInteraction;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->config:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpc4;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a known type: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Lcom/posthog/internal/replay/RRMouseInteraction;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/posthog/internal/replay/RRMouseInteraction;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/internal/replay/RRMouseInteraction;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-virtual {p3, p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;->b(Ljava/lang/Object;)Lpc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    .line 27
    check-cast p1, Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->serialize(Lcom/posthog/internal/replay/RRMouseInteraction;Ljava/lang/reflect/Type;Lvd4;)Lpc4;

    move-result-object p0

    return-object p0
.end method
