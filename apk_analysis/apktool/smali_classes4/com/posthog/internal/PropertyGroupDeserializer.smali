.class public final Lcom/posthog/internal/PropertyGroupDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc4<",
        "Lxr6;",
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
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lpc4;->d()Lkd4;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpc4;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, "AND"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Liv4;->AND:Liv4;

    goto :goto_1

    :cond_1
    const-string v0, "OR"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Liv4;->OR:Liv4;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    const-string v0, "values"

    invoke-virtual {p0, v0}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object p0

    if-eqz p0, :cond_3

    const-class p2, Lcom/posthog/internal/c;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-virtual {p3, p0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;->a(Lpc4;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/posthog/internal/c;

    :cond_3
    new-instance p0, Lxr6;

    invoke-direct {p0, p1, p2}, Lxr6;-><init>(Liv4;Lcom/posthog/internal/c;)V

    return-object p0
.end method
