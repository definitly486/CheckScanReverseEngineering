.class public final Lig4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhg4;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhg4;

    invoke-direct {v0}, Lhg4;-><init>()V

    iput-object v0, p0, Lig4;->a:Lhg4;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lig4;->b:Z

    return-void
.end method
