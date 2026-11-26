.class public final synthetic Lz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lyads/dc3;
.implements Lcom/my/target/c1$a;
.implements Lgv9;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lz3;->b:I

    iput-object p1, p0, Lz3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lz3;->c:Ljava/lang/Object;

    check-cast p0, Lug6;

    invoke-static {p0, p1}, Lyads/fc3;->a(Lug6;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lz3;->b:I

    iget-object p0, p0, Lz3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcn0;

    invoke-virtual {p0, p1}, Lcn0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    :pswitch_0
    check-cast p0, Lf4;

    invoke-virtual {p0, p1}, Lf4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lz3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/k1;

    iget-object v0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    iget-object p0, p0, Lcom/my/target/k1;->d:Lj1a;

    invoke-virtual {v0, p0}, Lcom/my/target/r;->b(Lao9;)V

    return-void
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lz3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/hg;

    sget v0, Lcom/my/target/hg;->S:I

    iput-object p1, p0, Lcom/my/target/hg;->Q:Le6a;

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->e(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object p0

    return-object p0
.end method
