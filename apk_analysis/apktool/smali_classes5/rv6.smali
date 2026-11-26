.class public final Lrv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# instance fields
.field public final a:Lpv6;

.field public b:Z


# direct methods
.method public constructor <init>(Lpv6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrv6;->a:Lpv6;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lrv6;->b:Z

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrv6;->a:Lpv6;

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
