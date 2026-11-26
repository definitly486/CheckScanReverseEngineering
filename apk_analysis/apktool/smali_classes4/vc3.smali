.class public Lvc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc9;
.implements Lrxa;


# static fields
.field public static final b:Lvc3;

.field public static final synthetic c:Lvc3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lvc3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvc3;->b:Lvc3;

    new-instance v0, Lvc3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvc3;->c:Lvc3;

    return-void
.end method

.method public static final a(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-void
.end method

.method public static final b(Lcom/posthog/internal/PostHogApiError;Lei0;ILic6;Lnl3;)Z
    .locals 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/posthog/internal/PostHogApiError;->b:I

    const/16 v0, 0x190

    const-string v1, ", let\'s try again soon."

    const/4 v2, 0x0

    const-string v3, "Flushing failed with "

    if-ge p0, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lic6;->a(Ljava/lang/String;)V

    return v2

    :cond_0
    const/16 v0, 0x19d

    const/4 v4, 0x1

    if-ne p0, v0, :cond_4

    if-le p2, v4, :cond_4

    iget v0, p1, Lei0;->a:I

    if-le v0, v4, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-ge p2, v4, :cond_1

    move p2, v4

    :cond_1
    iput p2, p1, Lei0;->a:I

    iget p4, p1, Lei0;->b:I

    div-int/lit8 p4, p4, 0x2

    if-le p4, p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, p4

    :goto_0
    if-ge p2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, p2

    :goto_1
    iput v4, p1, Lei0;->b:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", let\'s try again with a smaller batch."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lic6;->a(Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lic6;->a(Ljava/lang/String;)V

    return v2

    :cond_5
    return v4
.end method


# virtual methods
.method public e(Ltd4;F)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lie4;->d(Ltd4;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaht;->zzb()Z

    move-result p0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
