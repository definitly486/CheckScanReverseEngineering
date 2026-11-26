.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld00;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lk62;)Lr29;
    .locals 2

    new-instance p0, Lr81;

    invoke-virtual {p1}, Lk62;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lk62;->d()Lhm1;

    move-result-object v1

    invoke-virtual {p1}, Lk62;->c()Lhm1;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lr81;-><init>(Landroid/content/Context;Lhm1;Lhm1;)V

    return-object p0
.end method
