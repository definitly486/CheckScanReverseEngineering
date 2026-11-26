.class public final Lcl2$g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl2$g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcl2$g;


# direct methods
.method public constructor <init>(Lcl2$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl2$g$d;->b:Lcl2$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcl2$g$d;->b:Lcl2$g;

    iget-object v0, p0, Lcl2$g;->d:Lh88;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcl2$g;->b:Lrl1$a;

    invoke-virtual {v0}, Lrl1$a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lh88;->f:Lh88;

    invoke-virtual {v1, v0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v1

    const-string v2, "Failed to call onReady."

    invoke-virtual {v1, v2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    iput-object v1, p0, Lcl2$g;->d:Lh88;

    iget-object p0, p0, Lcl2$g;->a:Lcl2;

    invoke-virtual {p0, v2, v0}, Lcl2;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
