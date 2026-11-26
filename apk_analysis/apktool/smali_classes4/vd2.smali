.class public final Lvd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public d:Lm00;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvd2;->a:Ljava/lang/String;

    iput-object p3, p0, Lvd2;->b:Ljava/util/List;

    iput-object p4, p0, Lvd2;->c:Ljava/lang/String;

    iput p6, p0, Lvd2;->e:I

    iput p5, p0, Lvd2;->f:I

    return-void
.end method
