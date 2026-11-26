.class public final synthetic Lwx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwx9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lwx9;->c:Ljava/util/Map;

    iput-object p3, p0, Lwx9;->d:Ljava/lang/String;

    iput-object p4, p0, Lwx9;->e:Ljava/lang/String;

    iput-wide p5, p0, Lwx9;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v3, p0, Lwx9;->e:Ljava/lang/String;

    iget-wide v4, p0, Lwx9;->f:J

    iget-object v0, p0, Lwx9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lwx9;->c:Ljava/util/Map;

    iget-object v2, p0, Lwx9;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/my/tracker/obfuscated/i0;->l(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
