.class public final Lcom/my/target/u;
.super Lcom/my/target/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/u$a;
    }
.end annotation


# instance fields
.field public final d:Lkia;


# direct methods
.method public constructor <init>(Lz2a;Lcom/my/target/t0$a;Lkia;)V
    .locals 1

    new-instance v0, Lcom/my/target/u$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/b1;-><init>(Lcom/my/target/u$a;Lz2a;Lcom/my/target/t0$a;)V

    iput-object p3, p0, Lcom/my/target/u;->d:Lkia;

    return-void
.end method
