.class public final Lcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luw;


# instance fields
.field public final a:Lbv;


# direct methods
.method public constructor <init>(Lbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx;->a:Lbv;

    return-void
.end method


# virtual methods
.method public final a()Lmz7;
    .locals 1

    const-string v0, "RU"

    iget-object p0, p0, Lcx;->a:Lbv;

    invoke-interface {p0, v0}, Lbv;->a(Ljava/lang/String;)Lmz7;

    move-result-object p0

    return-object p0
.end method
