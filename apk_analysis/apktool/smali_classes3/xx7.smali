.class public final synthetic Lxx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic c:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxx7;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Lxx7;->c:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p3, p0, Lxx7;->d:Ljava/util/List;

    iput p4, p0, Lxx7;->e:I

    iput p5, p0, Lxx7;->f:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lxx7;->e:I

    iget v1, p0, Lxx7;->f:I

    iget-object v2, p0, Lxx7;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v3, p0, Lxx7;->c:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Lxx7;->d:Ljava/util/List;

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->v(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
