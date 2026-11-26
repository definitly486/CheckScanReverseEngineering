.class public final Lcom/tapjoy/internal/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/g2;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/tapjoy/internal/i;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    move-object p2, p1

    :cond_1
    iput-object p2, p0, Lcom/tapjoy/internal/l2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/l2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/internal/l2;->c:Ljava/util/Hashtable;

    return-void
.end method
