.class public final synthetic Lv04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/utils/IdGenerator;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/IdGenerator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv04;->b:Landroidx/work/impl/utils/IdGenerator;

    iput p2, p0, Lv04;->c:I

    iput p3, p0, Lv04;->d:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lv04;->c:I

    iget v1, p0, Lv04;->d:I

    iget-object p0, p0, Lv04;->b:Landroidx/work/impl/utils/IdGenerator;

    invoke-static {p0, v0, v1}, Landroidx/work/impl/utils/IdGenerator;->a(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
