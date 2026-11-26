.class public final synthetic Ldu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ldu6;->b:I

    iput-object p2, p0, Ldu6;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldu6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ldu6;->b:I

    iget-object v1, p0, Ldu6;->d:Ljava/lang/Object;

    iget-object p0, p0, Ldu6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/Map;

    check-cast v1, Landroidx/camera/core/impl/CameraInfoInternal;

    check-cast p1, Landroidx/camera/core/UseCase;

    invoke-static {p0, v1, p1}, Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;->a(Ljava/util/Map;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/UseCase;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lku6;

    check-cast v1, Lwt6;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lku6;->c:Lgu6;

    invoke-virtual {p0, p1, v1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
