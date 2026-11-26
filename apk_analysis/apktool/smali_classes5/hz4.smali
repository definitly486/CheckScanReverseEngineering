.class public final Lhz4;
.super Ljz1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lrl1$a;

.field public final synthetic e:Lh88;


# direct methods
.method public constructor <init>(Lez4$f;Lrl1$a;Lh88;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lhz4;->d:Lrl1$a;

    iput-object p3, p0, Lhz4;->e:Lh88;

    iget-object p1, p1, Lez4$f;->e:Lky1;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljz1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    iget-object v1, p0, Lhz4;->d:Lrl1$a;

    iget-object p0, p0, Lhz4;->e:Lh88;

    invoke-virtual {v1, p0, v0}, Lrl1$a;->a(Lh88;Lla5;)V

    return-void
.end method
