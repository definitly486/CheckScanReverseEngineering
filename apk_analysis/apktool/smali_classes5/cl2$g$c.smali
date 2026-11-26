.class public final Lcl2$g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl2$g;->a(Lh88;Lla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Lla5;

.field public final synthetic d:Lcl2$g;


# direct methods
.method public constructor <init>(Lcl2$g;Lh88;Lla5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl2$g$c;->d:Lcl2$g;

    iput-object p2, p0, Lcl2$g$c;->b:Lh88;

    iput-object p3, p0, Lcl2$g$c;->c:Lla5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcl2$g$c;->b:Lh88;

    iget-object v1, p0, Lcl2$g$c;->c:Lla5;

    iget-object v2, p0, Lcl2$g$c;->d:Lcl2$g;

    iget-object v2, v2, Lcl2$g;->d:Lh88;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcl2$g$c;->d:Lcl2$g;

    iget-object v0, v0, Lcl2$g;->d:Lh88;

    new-instance v1, Lla5;

    invoke-direct {v1}, Lla5;-><init>()V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcl2$g$c;->d:Lcl2$g;

    iget-object p0, p0, Lcl2$g;->b:Lrl1$a;

    invoke-virtual {p0, v0, v1}, Lrl1$a;->a(Lh88;Lla5;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcl2;->l:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Exception thrown by onClose() in ClientCall"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
