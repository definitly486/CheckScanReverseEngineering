.class public final Lrj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrj0;->a:I

    iput p2, p0, Lrj0;->b:I

    iput-boolean p3, p0, Lrj0;->c:Z

    return-void
.end method

.method public static a(I)Lrj0;
    .locals 3

    new-instance v0, Lrj0;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lrj0;-><init>(IIZ)V

    return-object v0
.end method
