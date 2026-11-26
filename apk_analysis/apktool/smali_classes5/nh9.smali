.class public final Lnh9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrp0;

.field public final b:Ljf6;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Lrp0;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh9;->a:Lrp0;

    iput-object p2, p0, Lnh9;->b:Ljf6;

    invoke-interface {p2}, Ljf6;->O0()I

    move-result p1

    iput p1, p0, Lnh9;->c:I

    return-void
.end method
