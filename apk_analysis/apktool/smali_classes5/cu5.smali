.class public final Lcu5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfu5;

.field public final b:Lz68;


# direct methods
.method public constructor <init>(Lfu5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu5;->a:Lfu5;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcu5;->b:Lz68;

    return-void
.end method
