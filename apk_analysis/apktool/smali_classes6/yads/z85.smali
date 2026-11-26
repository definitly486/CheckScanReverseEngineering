.class public final Lyads/z85;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lyads/wv;

.field public final c:Lyads/hi6;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lyads/wv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/z85;->d:Z

    iput-object p1, p0, Lyads/z85;->a:Ljava/lang/Object;

    iput-object p2, p0, Lyads/z85;->b:Lyads/wv;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/z85;->c:Lyads/hi6;

    return-void
.end method

.method public constructor <init>(Lyads/hi6;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lyads/z85;->d:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lyads/z85;->a:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lyads/z85;->b:Lyads/wv;

    .line 18
    iput-object p1, p0, Lyads/z85;->c:Lyads/hi6;

    return-void
.end method
