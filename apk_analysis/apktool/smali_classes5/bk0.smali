.class public final Lbk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Luj0;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public varargs constructor <init>([Luj0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbk0;->b:I

    iput v0, p0, Lbk0;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbk0;->d:Z

    iput-object p1, p0, Lbk0;->a:[Luj0;

    return-void
.end method
