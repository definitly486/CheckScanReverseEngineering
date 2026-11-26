.class public final Ld86$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld86;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Ld86;


# direct methods
.method public constructor <init>(Ld86;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld86$c;->b:Ld86;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Ld86$c;->b:Ld86;

    iput-object v0, p0, Ld86;->l:Lch8$c;

    iget-object v0, p0, Ld86;->i:Ld86$e;

    invoke-virtual {v0}, Ld86$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld86;->c()V

    :cond_0
    return-void
.end method
