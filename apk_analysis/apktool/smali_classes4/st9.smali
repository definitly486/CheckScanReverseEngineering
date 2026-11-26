.class public final synthetic Lst9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/e;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/e;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lst9;->b:Lcom/my/tracker/obfuscated/e;

    iput-object p2, p0, Lst9;->c:Ljava/lang/Object;

    iput-object p3, p0, Lst9;->d:Ljava/lang/String;

    iput-object p4, p0, Lst9;->e:Ljava/lang/String;

    iput-object p5, p0, Lst9;->f:Ljava/lang/String;

    iput-object p6, p0, Lst9;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Lst9;->f:Ljava/lang/String;

    iget-object v5, p0, Lst9;->g:Ljava/util/Map;

    iget-object v0, p0, Lst9;->b:Lcom/my/tracker/obfuscated/e;

    iget-object v1, p0, Lst9;->c:Ljava/lang/Object;

    iget-object v2, p0, Lst9;->d:Ljava/lang/String;

    iget-object v3, p0, Lst9;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/my/tracker/obfuscated/e;->b(Lcom/my/tracker/obfuscated/e;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
