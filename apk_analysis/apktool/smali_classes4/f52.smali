.class public final synthetic Lf52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lf52;->b:I

    iput-object p1, p0, Lf52;->c:Ljava/lang/Object;

    iput-object p2, p0, Lf52;->d:Ljava/lang/Object;

    iput-object p3, p0, Lf52;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lf52;->b:I

    iget-object v1, p0, Lf52;->e:Ljava/lang/Object;

    iget-object v2, p0, Lf52;->d:Ljava/lang/Object;

    iget-object p0, p0, Lf52;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/b1;

    check-cast v2, Lvha;

    check-cast v1, Lj8a;

    iget-object v0, p0, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, v1}, Lcom/my/target/b1$a;->a(Lvha;Lj8a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->g(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
