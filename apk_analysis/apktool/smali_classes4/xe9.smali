.class public final Lxe9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpn5;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lcom/posthog/internal/replay/RRWireframe;


# direct methods
.method public constructor <init>(Lpn5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe9;->a:Lpn5;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lxe9;->b:Z

    iput-boolean p1, p0, Lxe9;->c:Z

    iput-boolean p1, p0, Lxe9;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lxe9;->e:Lcom/posthog/internal/replay/RRWireframe;

    return-void
.end method
