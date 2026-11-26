.class public final synthetic Lp2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ls2c;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Exception;

.field public final synthetic e:[B

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ls2c;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2c;->b:Ls2c;

    iput p2, p0, Lp2c;->c:I

    iput-object p3, p0, Lp2c;->d:Ljava/lang/Exception;

    iput-object p4, p0, Lp2c;->e:[B

    iput-object p5, p0, Lp2c;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    iget-object v0, p0, Lp2c;->b:Ls2c;

    iget-object v1, v0, Ls2c;->d:Lm2c;

    iget-object v2, v0, Ls2c;->e:Ljava/lang/String;

    iget v3, p0, Lp2c;->c:I

    iget-object v4, p0, Lp2c;->d:Ljava/lang/Exception;

    iget-object v5, p0, Lp2c;->e:[B

    iget-object v6, p0, Lp2c;->f:Ljava/util/Map;

    invoke-interface/range {v1 .. v6}, Lm2c;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
