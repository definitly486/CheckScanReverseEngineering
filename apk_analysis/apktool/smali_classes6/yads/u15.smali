.class public final Lyads/u15;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g06;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lyads/g06;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/u15;->a:Lyads/g06;

    iput-object p2, p0, Lyads/u15;->b:[Z

    iget p1, p1, Lyads/g06;->b:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lyads/u15;->c:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lyads/u15;->d:[Z

    return-void
.end method
