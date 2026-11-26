.class public final Lh36$m;
.super Lh36;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh36;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh36<",
        "Llg5$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh36$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh36$m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh36$m;->a:Lh36$m;

    return-void
.end method


# virtual methods
.method public final a(Li37;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Llg5$c;

    if-eqz p2, :cond_0

    iget-object p0, p1, Li37;->i:Llg5$a;

    iget-object p0, p0, Llg5$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
