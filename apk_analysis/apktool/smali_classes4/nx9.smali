.class public final synthetic Lnx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:I

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lnx9;->c:Ljava/util/Map;

    iput p3, p0, Lnx9;->d:I

    iput-wide p4, p0, Lnx9;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lnx9;->d:I

    iget-wide v1, p0, Lnx9;->e:J

    iget-object v3, p0, Lnx9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object p0, p0, Lnx9;->c:Ljava/util/Map;

    invoke-static {v3, p0, v0, v1, v2}, Lcom/my/tracker/obfuscated/i0;->x(Lcom/my/tracker/obfuscated/i0;Ljava/util/Map;IJ)V

    return-void
.end method
