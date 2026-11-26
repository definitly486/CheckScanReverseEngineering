.class public final synthetic Ly7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/target/m1$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/m1$a;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7a;->b:Lcom/my/target/m1$a;

    iput-object p2, p0, Ly7a;->c:Ljava/lang/String;

    iput-wide p3, p0, Ly7a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Ly7a;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/my/target/m1;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Ly7a;->b:Lcom/my/target/m1$a;

    iget-object v3, v0, Lcom/my/target/m1$a;->a:Lcom/my/target/z2;

    sget-object v8, Li7a;->e:Li7a;

    const-string v5, ""

    iget-wide v6, p0, Ly7a;->d:J

    invoke-virtual/range {v3 .. v8}, Lcom/my/target/z2;->a(Ljava/lang/String;Ljava/lang/String;JLi7a;)V

    :cond_0
    return-void
.end method
