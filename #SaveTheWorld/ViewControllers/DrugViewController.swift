//
//  DrugViewController.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/7/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class DrugViewController: UIViewController {
    
    var info: Int = 0
    @IBOutlet weak var symptomLabel: UILabel!
    
    @IBAction func Alcohol(sender: AnyObject) {
        displayInfo(0)
    }
    @IBAction func Ecstasy(sender: AnyObject) {
        displayInfo(6)
    }
    
    @IBAction func CoughMed(sender: AnyObject) {
        displayInfo(3)
    }
    
    @IBAction func Heroin(sender: AnyObject) {
        displayInfo(7)
    }
    
    
    @IBAction func Marijuana(sender: AnyObject) {
        displayInfo(10)
    }
    
    @IBAction func Barbiturates(sender: AnyObject) {
        displayInfo(1)
    }
    
    @IBAction func Meth(sender: AnyObject) {
        displayInfo(11)
    }
    
    @IBAction func BathSalts(sender: AnyObject) {
        displayInfo(2)
    }
    
    @IBAction func Inhalants(sender: AnyObject) {
        displayInfo(8)
    }
    
    @IBAction func Crack(sender: AnyObject) {
        displayInfo(5)
    }
    
    @IBAction func LSD(sender: AnyObject) {
        displayInfo(9)
    }
    
    @IBAction func Morphine(sender: AnyObject) {
        displayInfo(12)
    }
    
    @IBAction func Persc(sender: AnyObject) {
        displayInfo(13)
    }
    
    @IBAction func Coke(sender: AnyObject) {
        displayInfo(4)
    }

    @IBAction func Val(sender: AnyObject) {
        displayInfo(14)
    }
    
    @IBAction func Vic(sender: AnyObject) {
        displayInfo(15)
    }
    
    var current: Int = 0
    
    let symptoms: [String] = ["Difficulty thinking", "Poor judgement", "Slow and shallow breathing", "Slow talking", "Lethargy", "Extreme sleepiness or even coma", "Poor coordination", "Inability to walk properly, staggering or stumbling"]
    
    let drugs: [String] = ["Alcohol", "Barbiturates", "Bath Salts", "Cough Medicine", "Cocaine", "Crack", "Ecstasy", "Heroin", "Inhalants", "LSD", "Marijuana", "Meth", "Morphine", "Prescription Drugs", "Valium", "Vicodin"]
    let information: [String] = ["Signs and symptoms of a problem with alcohol abuse may be overlooked or condoned by friends and coworkers until the damage starts to become obvious. For family members and close friends, the damage is probably apparent far sooner. These symptoms of alcohol abuse and alcoholism are warning signs that damage is occurring, whether to health, mind, relationships, legal situations or life in general. Overlooking the signs of abuse can pave the road for addiction to follow. When a person loses control of their drinking, the dwindling spiral may end in illness, incarceration, destruction of the family or death.", "Barbiturates are drugs used to help a person sleep. They have long been recognized to have serious dangers, the greatest being that the dosage to create a desirable effect—the ability to sleep when a person is suffering from insomnia—is not far from the lethal dose of the drug. In other words, it does not take much of an overdose to kill a person. Like many other drugs, barbiturates dissolve easily in fatty solutions. In the body, this means that these drugs are attracted to and will tend to bond to fat deposits. The character of fat in the body means that these deposits may store drug residues. A person who has abused barbiturates may carry the effects of these drugs around with them for years, which can cloud thinking, dim perceptions and contribute to the triggering of cravings for more drugs.", "“Bath salts” is one of the newest drugs to hit the streets. These drugs have nothing to do with bathing. They are called bath salts because they are usually packaged as a product “for a soothing bath, not for human consumption.” Before the drugs making up bath salts were illegal, this kept sellers from having the drugs confiscated. Sellers were usually convenience stores, head shops and similar businesses. They act as strong stimulants and may be sought by a person who normally uses cocaine or methamphetamine. They are strongly addictive and trigger intense cravings. Even a person who sees that they are experiencing harm from abuse of these drugs may not be able to stop himself.", "Parents of teen and pre-teen children may underestimate the potential for abuse of this drug that is readily available in some areas. While many drugstores have moved cough medicine bottles behind the counter to prevent shoplifting, in other stores, the bottles are right out in the open. Among young people, this is one of the more popular drugs of abuse but it is both addicting and its abuse can result in a fatal overdose. Prescription cough medications may contain codeine or pseudoephedrine, also addictive and damaging. These preparations will more likely be abused by an adult who has access to a physician to prescribe its use.", "If a person is abusing powdered cocaine and they don’t want you to know, they may disappear to use the drug and then return in a very different mood. They may seem excited and act more confident and exhibit a greater sense of well-being. They may be more excited sexually and talkative. Their energy will be pumped up and they probably will not have very much appetite for food and will not have a normal sleep pattern. When a person has been using cocaine over a long time period, they are likely to suffer physical and mental deterioration. Symptoms of long-term cocaine abuse can include depression, agitation, nervousness, tiredness but unable to sleep. The person may feel seriously distressed about life without good reason. They will have strong cravings for the drug. When use has continued for a long time, tolerance for the drug increases and more of the drug is required to create an effect similar to earlier use.", "When crack cocaine is smoked, the muscles tense and the heart beats faster. The person experiences exhilaration as a result of the release of specific mood hormones. At the same time that the heart beats faster, the blood vessels constrict, resulting in elevated blood pressure. At any time, this change can result in a heart attack, stroke or cardiac arrest. A person abusing crack cocaine may leave behind tiny plastic bags with small off-white rocks of crack, or just a little residue of the drugs that were stored in the bag. There may be crack pipes around made of metal or glass. A person who has been smoking crack often has burned fingers or lips from holding onto the pipe while it heats up. If the drug is used over a period of time, the user is likely to show premature aging. Some people have developed Parkinson’s disease after a long period of crack cocaine use. Of course, one of the major effects of crack cocaine is rapid development of addiction. Cocaine causes the strongest mental dependency of any drug. This dependency can occur within just days of starting to use crack cocaine.", "If you are a parent, a family member or a close friend of someone who is going out to clubs, music festivals or similar events frequently, you would be wise to know the signs and symptoms of ecstasy use. Illicit use of ecstasy is very common at these venues. Ecstasy is highly damaging and addictive, and the person who gets into heavy use of this drug may need professional help to escape from the addiction. Recent research reveals that changes in the brain take place very quickly after a person starts to abuse ecstasy. These changes can result in anxiety, depression and confusion. Further symptoms of ecstasy use include poor performance on tests requiring memory or cognitive ability. Tests have shown that even brief exposure to ecstasy can result in damage that lasts years. When use of the drug becomes heavy, signs of ecstasy use may include paranoia, depression, confusion and aggression. Immediate signs of ecstasy use generally last around five hours, but some signs may persist for weeks.", "Heroin is usually smoked, snorted or injected. So depending on the method of administration, you could find remnants of the drugs or the paraphernalia of drug use left behind. Heroin itself may be a powdery or crumbly substance, ranging all the way from off-white to dark brown. Black tar heroin is nearly black and is sticky instead of powdery. You might find syringes or small glass or metal pipes. A person dissolving the drug and injecting it might also leave dirty spoons and lighters around. A person injecting also needs some device to cause the veins to enlarge, so there may be belts or rubber tubing found in the area where he or she is using the heroin. Some heroin addicts may ask for help, but the majority fear the pain and sickness of withdrawal. It is very often up to the family members to rescue the heroin-addicted person and get him or her into withdrawal. It may only be by knowing the signs of heroin use that you can detect the addiction and begin to make arrangements for rehabilitation. An addict may try to conceal symptoms of heroin use by wearing long-sleeved clothing to cover needle marks. The family must refuse to accept the lies and simply help the person arrive at rehab.", "Inhalant abuse can be one of the most obvious types of abuse. Inhalant abusers may have paint on their faces, may smell of solvents, may leave behind bags impregnated with gasses, solvents or paint, and may deposit piles of rags saturated with paint thinner, degreaser or gasoline. When a person is a confirmed, chronic user, they may leave behind piles of empty compressed air cans or nitrous oxide canisters. Evidence of inhalant abuse may be very hard to hide for the frequent abuser. If a young person is just experimenting with inhalants, detection could be much harder. There is such a long list of substances that can be inhaled to produce intoxication, it would be very difficult to look all of them up. The list includes markers, nail polish remover, hair spray, fabric protectors and dry cleaning fluid. Even whipped cream canisters can be used, along with some types of glue. A person high on inhalants is likely to suffer exhaustion and an inability to focus. Less obvious signs of inhalant abuse include damage to blood, kidneys, liver, heart and bone marrow. One’s judgment is impaired and inhibitions are lowered after heavy use. This may lead a person to engage in irresponsible or dangerous activity.", "While LSD can be a dangerous drug, and one that is mostly abused by young people, it may be an advantage that the signs are LSD abuse are so distinctive, as this makes them easier for parents or loved ones to detect this type of drug abuse. LSD is sold in pills, capsules or in liquid form. The liquid is soaked into specially prepared blotting paper that is often imprinted with cartoon characters and perforated. Each tiny square is one dose of LSD. The blotting paper is held in the user’s mouth until all the drug has been absorbed. Within an hour or so of consuming this drug, a person’s perceptions and sense of reality begin to change. This may frighten a person who is going through it for the first time, or someone who is emotionally unstable. But to a person who knows what is coming, this is considered a desirable change. A person going through an LSD trip usually feels that he or she is gaining some special understanding or insight that was not available while sober. An effort to understand life better or continue these insights may drive a person to repeat the experience.", "Weed either can be a long-term habit, or it can lead to the abuse of stronger drugs, depending on the societal pattern in the location it’s being abused. One thing is certain: Despite all the media and articles and proponents for legalization, weed is addictive and creates an impaired condition that can be dangerous. Since weed is abused by so many young people, millions of parents struggle to clearly identify drug problems or addiction in their children. It’s important to be able to detect signs of weed use when they are present. The most immediate signs of smoking weed are dilation of the blood vessels in the eyes (making them bloodshot), increased heart rate, increased appetite and memory impairment, along with difficulty paying attention or solving problems. But the real reason people abuse the drug is for the euphoria that may last three to six hours. When monitoring for symptoms of weed use, there may be reactions of anxiety, fear or panic, especially if they are new to the drug or taking it in an unsettling location. Hallucinations, paranoia and delusional behavior can be symptoms of weed use that is very potent, or consumption of a large amount.", "Methamphetamine is not the number one drug that is abused in most countries, but it is one of the most addictive and one of the most destructive. It’s important that parents and other family members are able to tell when someone they care about is abusing methamphetamine. Methamphetamine can be swallowed, snorted, injected or smoked. If you are looking for traces of meth use, therefore, you may find small bags of white powder or crystals or syringes. Other items that could be left behind after meth abuse are small pieces of crumpled aluminum foil, soda cans with a hole in the side or the shafts of inexpensive ball-point pens that might be used to snort the drug. In its manufacture, methamphetamine is processed using harsh, caustic chemicals. As a result, heavy use of this drug is very hard on the user. Additionally, the lifestyle of a methamphetamine user usually creates further damage. All in all, it is one of the most damaging drugs on the illicit market. Repeated use can show up in an irregular heartbeat, rapid heartbeat, mood disturbances, violent, aggressive, paranoid behavior, confusion and insomnia. There may be a rapid deterioration of the person’s behavior or appearance if he or she is a heavy user.", "Morphine is the classic opiate painkiller, the standard by which other opiates are measured. While other opiates are more often the drug of choice of opiate addicts, morphine in pill or liquid form is still sought to satisfy cravings. When a person is either abusing morphine or even taking it properly, they are likely to be constipated. All opiates tend to slow down the ability of the body to eliminate solid wastes so some people on painkillers seek medications that will help them fight constipation. Opiates tend to make a person nauseated and they may vomit after taking the drug. Opiates slow breathing, which is what usually kills a person who has taken too much of the drug. A person on these drugs tends to be sleepy and they may dope off.If a person is abusing morphine, in addition to physical symptoms of abuse, you may find pill bottles or pills or syringes. A person using morphine according to a doctor’s instruction can still become addicted to the drug, sometimes in a little as a few weeks.", "Many people may start by using one of these drugs legitimately then progress to abuse after addiction occurs. Many more people try out someone else’s prescription in school, at work or at a party and like the effect. Whatever way it occurs, the rate of abuse and overdose both are on the rise. Naturally, the signs of abuse of these drugs will vary by the type of prescription drug being abused. A person abusing prescription opiates (pain relievers), in addition to not feeling pain at normal levels, may be drowsy and confused. They may complain of nausea or look for remedies for constipation. Pupils will be constricted. There may be distinct changes in a young person who has started abusing prescription. Parents may chalk up these changes to just being a teenager. But if too many of these signs show up, it is time for a closer look.", "Valium is an anti-anxiety drug, one of several popular benzodiazepines. More than three million Americans use this drug medically and many more abuse it illicitly. The drug is also known by its generic name, diazepam. Another sign of Valium or diazepam abuse is that a person may become a poor driver. He may weave in his lane and may have trouble focusing. His reaction time will probably be slower. Because of the sedating effect of the drug, the driver may not react appropriately to hazards on the road. Highway safety information indicates that Valium use may contribute to some traffic accidents. In fact, use of Valium at night may still impair one’s ability to drive the next day. A Valium abuser or addict may also suffer a loss of judgment as one of the effects of the drug. He could then possibly decide to mix Valium with alcohol abuse or opiates, which could result in his death. Each of these drugs slows breathing and if it slows enough, the drug abuser will die. Once addiction is present, withdrawal symptoms will occur if a person stops taking the drug. These withdrawal symptoms can be severe or even life-threatening. Seizures and convulsions are possible if a person has not been tapered off the drug after heavy use. Many people will need medical detox to help them break free from their addictions safely.", "Vicodin is one of the most frequently abused drugs in America. It is composed of the painkiller hydrocodone and acetaminophen in differing dosages. Hydrocodone is a strong opiate painkiller with highly addictive properties. Acetaminophen is a much milder non-steroidal pain reliever.In the case of prescription drugs, many people get started on their way to addiction by accident. They may suffer some kind of pain or injury and have the drug prescribed by a doctor. As they build a tolerance to the drug, they need more and more to keep the pain away. They may exceed the amount of the drug the doctor is willing to prescribe and then start getting the drug illicitly. Many people who run out of the money they need to purchase opiates will turn to criminal actions to get their drugs. Pharmacy theft is one of these crimes. Around the country, Vicodin is a very common drug in pharmacy thefts. Pharmacy thefts are so frequent in some areas that some drugstore chains restrict the distribution of these drugs only a few locations."]
    
    func displayInfo(index: Int){
        info = index
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        // Create a variable that you want to send
        let destinationVC = segue.destinationViewController as! InfoViewController
        destinationVC.info = info
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        current = Int(arc4random_uniform(UInt32(symptoms.count)))
        symptomLabel.text = symptoms[current]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
