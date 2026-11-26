.class public final Lyads/if0;
.super Lyads/mf0;
.source "SourceFile"


# instance fields
.field public final b:Lyads/rh0;


# direct methods
.method public constructor <init>(Lyads/rh0;)V
    .locals 1

    iget-object v0, p1, Lyads/rh0;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lyads/mf0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/if0;->b:Lyads/rh0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/if0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/if0;

    iget-object p0, p0, Lyads/if0;->b:Lyads/rh0;

    iget-object p1, p1, Lyads/if0;->b:Lyads/rh0;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/if0;->b:Lyads/rh0;

    invoke-virtual {p0}, Lyads/rh0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/if0;->b:Lyads/rh0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdUnitMediationAdapter(adapter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
