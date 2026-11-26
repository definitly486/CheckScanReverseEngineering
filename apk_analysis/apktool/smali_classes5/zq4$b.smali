.class public final Lzq4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lyq4;

.field public final b:I


# direct methods
.method public constructor <init>(Lyq4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzq4$b;->a:Lyq4;

    iput p2, p0, Lzq4$b;->b:I

    return-void
.end method
