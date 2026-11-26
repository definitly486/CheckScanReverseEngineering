.class public final Lyads/b25;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/z15;

.field public final b:Lyads/z15;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lyads/z15;Lyads/z15;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b25;->a:Lyads/z15;

    iput-object p2, p0, Lyads/b25;->b:Lyads/z15;

    iput p3, p0, Lyads/b25;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/b25;->d:Z

    return-void
.end method
