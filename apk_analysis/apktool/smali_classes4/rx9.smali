.class public final synthetic Lrx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lrx9;->c:Ljava/util/Map;

    iput-wide p3, p0, Lrx9;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lrx9;->c:Ljava/util/Map;

    iget-wide v1, p0, Lrx9;->d:J

    iget-object p0, p0, Lrx9;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-static {p0, v0, v1, v2}, Lcom/my/tracker/obfuscated/i0;->J(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;J)V

    return-void
.end method
