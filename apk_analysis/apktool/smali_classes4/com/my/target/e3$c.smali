.class public interface abstract Lcom/my/target/e3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/iab/omid/library/corpmailru/adsession/Partner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lsh5;->a:Ljava/lang/String;

    const-string v0, "5.52.5"

    const-string v1, "Corpmailru"

    invoke-static {v1, v0}, Lcom/iab/omid/library/corpmailru/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/corpmailru/adsession/Partner;

    move-result-object v0

    sput-object v0, Lcom/my/target/e3$c;->a:Lcom/iab/omid/library/corpmailru/adsession/Partner;

    return-void
.end method
