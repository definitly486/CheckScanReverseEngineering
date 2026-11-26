.class public final Lt64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# instance fields
.field public final a:Ls64;

.field public final b:Z


# direct methods
.method public constructor <init>(Ls64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt64;->a:Ls64;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt64;->b:Z

    return-void
.end method

.method public constructor <init>(Ls64;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lt64;->a:Ls64;

    .line 11
    iput-boolean p2, p0, Lt64;->b:Z

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt64;->a:Ls64;

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
