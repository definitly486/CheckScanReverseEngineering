.class public final Lcom/posthog/internal/GsonPropertyValueAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc4;
.implements Lwd4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc4<",
        "Lcom/posthog/internal/c;",
        ">;",
        "Lwd4<",
        "Lcom/posthog/internal/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/posthog/internal/PropertyValueDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/posthog/internal/PropertyValueDeserializer;

    invoke-direct {v0}, Lcom/posthog/internal/PropertyValueDeserializer;-><init>()V

    iput-object v0, p0, Lcom/posthog/internal/GsonPropertyValueAdapter;->a:Lcom/posthog/internal/PropertyValueDeserializer;

    return-void
.end method


# virtual methods
.method public final deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/posthog/internal/GsonPropertyValueAdapter;->a:Lcom/posthog/internal/PropertyValueDeserializer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/PropertyValueDeserializer;->a(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Lcom/posthog/internal/c;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    check-cast p1, Lcom/posthog/internal/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/posthog/internal/c$a;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/posthog/internal/c$a;

    iget-object p0, p1, Lcom/posthog/internal/c$a;->a:Ljava/util/ArrayList;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-virtual {p3, p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;->b(Ljava/lang/Object;)Lpc4;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/posthog/internal/c$b;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/posthog/internal/c$b;

    iget-object p0, p1, Lcom/posthog/internal/c$b;->a:Ljava/util/ArrayList;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-virtual {p3, p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;->b(Ljava/lang/Object;)Lpc4;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-object p0
.end method
