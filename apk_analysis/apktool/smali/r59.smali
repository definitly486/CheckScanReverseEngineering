.class public final Lr59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll69;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr59$a;
    }
.end annotation


# instance fields
.field public final a:Ljf6;


# direct methods
.method public constructor <init>(Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr59;->a:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(Li69;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr59$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Unity Offerwall"

    const-string v1, "SDK"

    iget-object p0, p0, Lr59;->a:Ljf6;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljf6;->G(Z)V

    new-instance p0, Lkd$t0$a;

    const-string p1, "Closed"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void

    :cond_1
    invoke-interface {p0, v2}, Ljf6;->G(Z)V

    new-instance p0, Lkd$t0$d;

    const-string p1, "Shown"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void
.end method
