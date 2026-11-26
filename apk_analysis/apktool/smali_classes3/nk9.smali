.class public final synthetic Lnk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/work/impl/utils/WorkProgressUpdater;

.field public final synthetic c:Ljava/util/UUID;

.field public final synthetic d:Landroidx/work/Data;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/WorkProgressUpdater;Ljava/util/UUID;Landroidx/work/Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk9;->b:Landroidx/work/impl/utils/WorkProgressUpdater;

    iput-object p2, p0, Lnk9;->c:Ljava/util/UUID;

    iput-object p3, p0, Lnk9;->d:Landroidx/work/Data;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnk9;->c:Ljava/util/UUID;

    iget-object v1, p0, Lnk9;->d:Landroidx/work/Data;

    iget-object p0, p0, Lnk9;->b:Landroidx/work/impl/utils/WorkProgressUpdater;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/utils/WorkProgressUpdater;->a(Landroidx/work/impl/utils/WorkProgressUpdater;Ljava/util/UUID;Landroidx/work/Data;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
