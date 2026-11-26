.class public final synthetic Lc52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc52;->b:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iput-wide p2, p0, Lc52;->c:J

    iput-object p4, p0, Lc52;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lc52;->c:J

    iget-object v2, p0, Lc52;->d:Ljava/lang/String;

    iget-object p0, p0, Lc52;->b:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-static {p0, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->e(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;JLjava/lang/String;)V

    return-void
.end method
