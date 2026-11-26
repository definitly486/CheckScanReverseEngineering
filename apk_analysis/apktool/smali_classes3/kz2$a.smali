.class public final Lkz2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lkz2$c;

.field public final b:Lf53$c;

.field public c:I


# direct methods
.method public constructor <init>(Lkz2$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkz2$a$a;

    invoke-direct {v0, p0}, Lkz2$a$a;-><init>(Lkz2$a;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lf53;->a(ILf53$b;)Lf53$c;

    move-result-object v0

    iput-object v0, p0, Lkz2$a;->b:Lf53$c;

    iput-object p1, p0, Lkz2$a;->a:Lkz2$c;

    return-void
.end method
