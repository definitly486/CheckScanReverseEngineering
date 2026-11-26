.class public final synthetic Lv1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/m2;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/m2;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1a;->b:Lcom/my/tracker/obfuscated/m2;

    iput-wide p2, p0, Lv1a;->c:J

    iput p4, p0, Lv1a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lv1a;->c:J

    iget v2, p0, Lv1a;->d:I

    iget-object p0, p0, Lv1a;->b:Lcom/my/tracker/obfuscated/m2;

    invoke-static {p0, v0, v1, v2}, Lcom/my/tracker/obfuscated/m2;->f(Lcom/my/tracker/obfuscated/m2;JI)V

    return-void
.end method
