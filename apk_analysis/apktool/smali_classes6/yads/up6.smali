.class public final Lyads/up6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lyads/wp6;


# direct methods
.method public constructor <init>(Lyads/wp6;F)V
    .locals 0

    iput-object p1, p0, Lyads/up6;->c:Lyads/wp6;

    iput p2, p0, Lyads/up6;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lyads/up6;->c:Lyads/wp6;

    iget-object v0, v0, Lyads/wp6;->b:Lyads/aq6;

    iget-object v0, v0, Lyads/aq6;->e:Lyads/oq6;

    iget p0, p0, Lyads/up6;->b:F

    iput p0, v0, Lyads/oq6;->a:F

    iget-object v1, v0, Lyads/oq6;->d:Lyads/tp6;

    if-nez v1, :cond_0

    sget-object v1, Lyads/tp6;->c:Lyads/tp6;

    iput-object v1, v0, Lyads/oq6;->d:Lyads/tp6;

    :cond_0
    iget-object v0, v1, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/dp6;

    iget-object v1, v1, Lyads/dp6;->e:Lyads/s9;

    sget-object v2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v3, v1, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iget-object v1, v1, Lyads/s9;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "setDeviceVolume"

    invoke-virtual {v2, v3, v4, v1}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
