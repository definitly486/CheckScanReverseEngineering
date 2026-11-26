.class public final Ld86$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld86;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Ld86;


# direct methods
.method public constructor <init>(Ld86;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld86$b;->b:Ld86;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Ld86$b;->b:Ld86;

    iput-object v0, p0, Ld86;->r:Lch8$c;

    iget-object v0, p0, Ld86;->i:Ld86$e;

    const/4 v1, 0x0

    iput v1, v0, Ld86$e;->b:I

    invoke-virtual {p0}, Ld86;->c()V

    return-void
.end method
