.class public final synthetic Lv51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lmq5;
.implements Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lv51;->b:I

    iput-object p1, p0, Lv51;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object p0, p0, Lv51;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/w2;

    iget-object v0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/w2;->d:Lxda;

    invoke-virtual {v0}, Lcom/my/target/r0;->c()V

    iget-object v0, v0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0, v1}, Lcom/my/target/c;->a(Lxda;)V

    iget-object v0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    invoke-virtual {v0}, Lcom/my/target/r0;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    :cond_0
    iget-object p0, p0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lv51;->b:I

    iget-object p0, p0, Lv51;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lio/appmetrica/analytics/location/impl/r;

    check-cast p1, Landroid/location/LocationManager;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/location/impl/r;->b(Lio/appmetrica/analytics/location/impl/r;Landroid/location/LocationManager;)Lj59;

    move-result-object p0

    return-object p0

    :sswitch_0
    check-cast p0, Lai1;

    invoke-virtual {p0, p1}, Lai1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus5;

    return-object p0

    :sswitch_1
    check-cast p0, Ly51;

    invoke-virtual {p0, p1}, Ly51;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lv51;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    :try_start_0
    sget-object v0, Le79;->a:Le79;

    invoke-virtual {v0, p0}, Le79;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Lv51;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/search/SearchView;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchView;->b(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public run(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lv51;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/navigation/NavigationView;

    invoke-static {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->a(Lcom/google/android/material/navigation/NavigationView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv51;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->a(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
